class PostsController < ApplicationController
  def index
    @posts = Post.order_by(:created_at)
  end
end
