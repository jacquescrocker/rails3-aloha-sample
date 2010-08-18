class PostsController < ApplicationController
  def index
    @posts = Post.order_by(:created_at.desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  # ADMIN FEATURES:
  before_filter :admin_required, :only => [:new, :create, :destroy, :edit, :update]

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

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post has been deleted"
    redirect_to root_url
  end

end
