class PostsController < ApplicationController

  # before_action :move_to_index, expect: :index

  def index
    @posts = Post.includes(:user).page(params[:page]).per(4).order("created_at DESC")
  end

  def new
  end

  def create
    Post.create(menu: post_params[:menu], shop_name: post_params[:shop_name], date: post_params[:date], recipe: post_params[:recipe],user_id: current_user.id)
  end

  def show_details
    @posts = Post.find(params[:id])
  end

  private
  def post_params
    params.permit(:date, :shop_name, :menu, :recipe, :genre, :fish_type, current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
