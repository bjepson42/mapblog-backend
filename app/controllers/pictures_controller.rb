class PicturesController < ApplicationController

  def index
    render json: Picture.all
  end

  def show
    render json: Picture.find(params[:id])
  end

  def create
    @picture = Picture.create(picture_params)
    render json: {
        picture: @picture,
        token: encode({picture_id: @picture.id})
      }, status: accepted
  end

  def profile
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    render json: Picture.find(payload["picture_id"]), status: :accepted

  end

  def update
    Picture.find(params[:id]).update(picture_params)
    render json: Picture.find(params[:id])
  end

  def destroy
    render json: Picture.find(params[:id]).destroy
  end

  private
  def picture_params
    params.require(:picture).permit(:picturename)
  end
end
