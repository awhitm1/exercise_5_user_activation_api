class PostsController < ApplicationController
  def create
    user = User.find(params[:id])
    if user.active == true 
      post = Post.new(post_params)
      user.posts << post
      render json: post
    else
      render json: {error: "User is not active or valid"}
    end
  end

  def index
    user = User.find(params[:id])
    if user.active == true 
      render json: user.posts
    elsif user.active == false 
      render json: {error: "User is not active"}
    else 
      render json: {error: "User is not valid"}
    end
  end
end
