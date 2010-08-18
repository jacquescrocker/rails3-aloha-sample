class PostsController < ApplicationController
  def index
    @posts = Post.order_by(:created_at.desc)
  end

  def new
    @post = Post.new
  end

  def create
    post_params = params[:post].slice(:title, :body) if params[:post]

    @post = Post.new(post_params || {})

    if @post.save
      flash[:notice] = "Post successful"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

end
