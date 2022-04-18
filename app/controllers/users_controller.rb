class UsersController < ApplicationController

  def index
    @book = Book.new
    @user = current_user
    @users = User.all
    @books = Book.all
  end

  def show
    @book = Book.new
    @users = User.all
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(book_params)
    redirect_to book_path(list.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
