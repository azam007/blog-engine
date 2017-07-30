class PostsController < ApplicationController
  $judul = "ZamBlog"
  def index
    @posts = Post.all
    # @@judul
  end
  def show
    @post = Post.find(params[:id])
    # @@judul
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      raise 'post was successfully created'
    else
      raise @post.errors
    end
  end

  private
  def post_params
    params.permit(:title, :content)
  end
end
