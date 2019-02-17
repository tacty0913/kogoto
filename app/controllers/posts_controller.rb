class PostsController < ApplicationController
  def new
    @posts = Post.new
  end
  
  def index
    @posts = Post.all
  end
  
  def create
    @posts = Post.new(content: params[:content])
    if @posts.save
      redirect_to("/posts/index")
    else
      render("/posts/new")
    end
  end
  
  # 再読み込みの処理
  def create_form
    redirect_to("/posts/new")
  end
  
  def delete
    @posts = Post.find_by(id: params[:id])
    @posts.destroy
    redirect_to("/posts/index")
  end
end
