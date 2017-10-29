class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #user was successfully created
      flash[:success] = "You have successfully signed up."
      redirect_to @user
    else
      #user failed to create
      render 'new'
    end
  end


private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
