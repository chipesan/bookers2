class UsersController < ApplicationController

  def index
    @book = Book.new
    @user = User.all
    @books = Book.all
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(list_params)
    redirect_to book_path(list.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
