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
end
