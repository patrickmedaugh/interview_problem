class UsersController < ApplicationController
  respond_to :json, :html

  def index
    @users = User.all
    respond_with @users.as_json(only: [:first_name, :last_name, :id, :email])
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:errors] = "Invalid fields"
      render :new
    end
  end

  def new
    @user = User.create
  end

  def show
    @user = User.find(params[:id])
    respond_with @user.as_json(only: [:first_name, :last_name, :id, :email])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :social_security_number)
  end
end
