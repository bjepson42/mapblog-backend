require "byebug"

class AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {
            message: "correct username and pass",
            error: false,
            user: @user,
            token: encode({user_id: @user.id})
          }, status: :accepted
    else
          render json: {
            message: "username and password combination invalid",
            error: true,
          }, status: :unauthorized
    end
  end
end
