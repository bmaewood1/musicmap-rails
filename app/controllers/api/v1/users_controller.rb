require 'rest_client'

class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.find_or_create_by(user_params)
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end 