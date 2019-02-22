class PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    render json: {
        post: @post,
        token: encode({post_id: @post.id})
      }, status: accepted
  end

  def profile
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    render json: Post.find(payload["post_id"]), status: :accepted

  end

  def update
    Post.find(params[:id]).update(post_params)
    render json: Post.find(params[:id])
  end

  def destroy
    render json: Post.find(params[:id]).destroy
  end

  private
  def post_params
    params.require(:post).permit(:postname)
  end
end
