class PostsController < ApplicationController

  def new
    @post = Post.new
  end
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(message_params)
    @post.save
    redirect_to root_path ,notice: 'メッセージが送信されました'
  end
  def show
    @post = Post.find(params[:id])
    @requests = @post.requests
  end

  private

  def message_params
    # params.require(:post).permit(:title, :image,:content,:address).merge(user_id: current_user.id)
    params.require(:post).permit(:title, :image,:content,:address)
  end

  
end
