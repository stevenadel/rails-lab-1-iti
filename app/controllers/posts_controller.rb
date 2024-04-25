class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy] # instead of repeating

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_url, notice: "Post created successfully!"
    else
      render :new
    end
  end
  
  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_url, notice: "Post updated successfully!"
    else
      render :edit
    end
  end

  def destroy
  end

  private
  # for all methods that operate on a specific post
  def set_post
    @post = Post.find(params[:id])
  end

  # instead of the long repeated sentence we used in the lecture (I know we didn't discuss this yet) 
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
