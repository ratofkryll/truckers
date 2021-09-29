class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to trucks_path, notice: 'User was successfully created.'
    else
      render action: "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :company_id, :phone_number, :role, )
  end
end
