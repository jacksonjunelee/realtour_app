class Api::v1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.includes(:listings).find(params[:id])
    render json: @user
  end

  def edit
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update()
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end

  private
   def user_params
     params.require(:user).permit(:firstname, :middlename, :lastname, :username, :address, :city, :state, :zip, :phonenumber, :email, :encrypted_password, :is_lister)
   end
end
