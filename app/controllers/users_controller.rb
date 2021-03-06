class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to To-do list #{@user.username}"

      redirect_to login_path
    else
      render 'new'
    end
  end

  def index
    #added
  end

  def show
    #added
    @user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end