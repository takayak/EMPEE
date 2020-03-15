class RequestsController < ApplicationController
  def index
    # @requests = Request.find_by(post_id: params[:post_id])
    # @posts = Post.all
    @requests = Request.all
    # @requests = Request.find(params[:post_id])
    # @requests = Request.where(params.post_id)
    # @requests = post_id.requests
    # @requests.post_id.find_by(post_id: post_id)
  end

  def new
    @request = Request.new
    @post = Post.new
  end
  
  def create
    @request = Request.new(request_params)
    @request.post_id = params[:post_id]
    @request.save
    redirect_to posts_path
    # binding.pry
    # if @request.save
      
    # else
      # render new_post_request_path(params[:post.id])
    # end
  end

  def show
    @requests = Request.find_by(post_id: params[:post_id])
  end

  private

  def request_params
    # params.require(:post).permit(:title, :image,:content,:address).merge(user_id: current_user.id)
    params.require(:request).permit(:message,:post_id)
    # .merge(post_id: post.id)
  end

end
