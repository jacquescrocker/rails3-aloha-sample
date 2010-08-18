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
    @post = Post.new(post_params || {})

    if @post.save
      flash[:notice] = "Post successful"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:notice] = "Post has been updated"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post has been deleted"
    redirect_to root_url
  end

  protected
  def post_params
    if params[:post]
      params[:post].slice(:title, :body)
    else
      {}
    end
  end

end
