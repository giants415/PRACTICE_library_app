class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path
      # redirect_to user_path(@user) USE AFTER SHOW TEMPLATE IS SET UP
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
