class ReviewsController < ApplicationController
  before_action :set_city_and_park, only: [:new, :create, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.park = @park
    @review.reviewer = current_user

    if @review.save
      redirect_to city_park_path(@city, @park)
    else
      @errors = @review.errors.full_messages
      render 'new'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to city_park_path(@city, @park)
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :park, :reviewer)
  end

  def set_city_and_park
    @city = City.find(params[:city_id])
    @park = Park.find(params[:park_id])
  end
end
