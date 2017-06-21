class PostController < ApplicationController
  def index
      @number = 7
      @posts = Post.all
  end
  def new
      @posts = Post.all
  end
  def create
      params[:content]
      @post = Post.new(content:params[:content])
      @post.save
      redirect_to("/posts/new")
  end

end
