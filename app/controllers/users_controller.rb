class UsersController < ApplicationController
  respond_to :json, :html

  def index
    @users = User.all
    respond_with @users.as_json(only: [:first_name, :last_name, :id, :email])
  end

  def create

  end

  def show
    @user = User.find(params[:id])
    respond_with @user.as_json(only: [:first_name, :last_name, :id, :email])
  end
end
