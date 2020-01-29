class PostsController < ApplicationController
  def index
    @posts = Post.all.order("RANDOM()")
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to posts_path
  end

  

  private

  def post_params
    params.require(:post).permit
  end

end
