class UsersController < ApplicationController
  def index
    user = User.find(params[:id])
    render json: user
  end

  def activate
    user= User.find(params[:id])
    user.active = true
    user.save

    render json: user
  end

  def deactivate
    user= User.find(params[:id])
    user.active = false
    user.save
    render json: user
  end
end
