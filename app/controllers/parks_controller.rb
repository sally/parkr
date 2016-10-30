class ParksController < ApplicationController
  before_action :set_city_and_park, only: [:show, :edit, :udpate]
  before_action :set_city_and_new_park, only: [:new, :create]

  def index
    @city = City.find(params[:city_id])
    @parks = Park.where(city: @city)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @park.assign_attributes(park_params)
    @park.city = @city
    @park.creator = current_user
    if @park.save
      redirect_to city_park_path(@city, @park)
    else
      @errors = @park.errors.full_messages
      render 'new'
    end
  end

  def update
    if @park.update(park_params)
      redirect_to city_park_path(@city, @park)
    else
      @errors = @park.errors.full_messages
      render 'edit'
    end
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :city, :creator)
  end

  def set_city_and_park
    @city = City.find(params[:city_id])
    @park = Park.find(params[:id])
  end

  def set_city_and_new_park
    @city = City.find(params[:city_id])
    @park = Park.new
  end
end
