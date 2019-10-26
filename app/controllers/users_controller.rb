class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @posts = current_user.posts.page(params[:page]).per(4).order("created_at DESC")
  end
end
