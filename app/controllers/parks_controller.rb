class ParksController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @parks = Park.where(city: @city)
  end

  def show
    @park = Park.find(params[:id])
  end
end
