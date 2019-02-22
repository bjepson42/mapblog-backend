class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    render json: {
        user: @user,
        token: encode({user_id: @user.id})
      }, status: accepted
  end

  def profile
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    render json: User.find(payload["user_id"]), status: :accepted

  end

  def update
    User.find(params[:id]).update(user_params)
    render json: User.find(params[:id])
  end

  def destroy
    render json: User.find(params[:id]).destroy
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end
end
