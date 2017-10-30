class UsersController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #user was successfully created
      log_in @user
      flash[:success] = "You have successfully signed up."
      redirect_to @user
    else
      #user failed to create
      render 'new'
    end
  end

  def show
    #User can only see their own profile page
    if logged_in? && Integer(params[:id])==current_user.id
      @user = current_user
    else
      redirect_to login_path
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
