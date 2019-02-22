class LocationsController < ApplicationController

  def index
    render json: Location.all
  end

  def show
    render json: Location.find(params[:id])
  end

  def create
    @location = Location.create(location_params)
    render json: {
        location: @location,
        token: encode({location_id: @location.id})
      }, status: accepted
  end

  def profile
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    render json: Location.find(payload["location_id"]), status: :accepted

  end

  def update
    Location.find(params[:id]).update(location_params)
    render json: Location.find(params[:id])
  end

  def destroy
    render json: Location.find(params[:id]).destroy
  end

  private
  def location_params
    params.require(:location).permit(:locationname)
  end
end
