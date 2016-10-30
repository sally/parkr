class ParksController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @parks = Park.where(city: @city)
  end

  def show
    @park = Park.find(params[:id])
  end

  def new
    @city = City.find(params[:city_id])
  end

  def create
    @city = City.find(params[:city_id])
    @park = @city.parks.new(park_params)
    @park.creator = current_user
    if @park.save
      redirect_to city_park_path(@city, @park)
    else
      render 'new'
    end
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :city, :creator)
  end
end
