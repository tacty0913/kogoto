class PostsController < ApplicationController
  def new
  end
  
  def index
    @posts = Post.all
  end
  
  def create
    @posts = Post.new(content: params[:text])
    @posts.save
    redirect_to("/posts/index")
  end
  
  def delete
    @posts = Post.find_by(id: params[:id])
    @posts.destroy
    redirect_to("/posts/index")
  end
end
