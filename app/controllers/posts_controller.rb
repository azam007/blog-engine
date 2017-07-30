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
    @posting = Post.new
  end
  def create
    @post.new(params[:post])
    if @post.save
      raise 'post was successfully created'
    else
      raise @post.errors
    end
  end

end
