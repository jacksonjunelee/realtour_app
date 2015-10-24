class User < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    @user = User.new
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render nothing: true
    end
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
      render nothing: true
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: @user
    else
      render nothing: true
    end
  end

  private
   def user_params
     params.require(:user).permit(:firstname, :middlename, :lastname, :username, :address, :city, :state, :zip, :phonenumber, :email, :encrypted_password, :is_lister)
   end
end    
