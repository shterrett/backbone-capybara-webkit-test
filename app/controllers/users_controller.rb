class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    puts '**************** params ****************'
    puts params
    puts '**************** params ****************'
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    render json: { name: @user.name, email: @user.email }
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
