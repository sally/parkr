class ReviewsController < ApplicationController
  def new
    @city = City.find(params[:city_id])
    @park = Park.find(params[:park_id])
    @review = Review.new
  end

  def create
    @city = City.find(params[:city_id])
    @park = Park.find(params[:park_id])
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

  private

  def review_params
    params.require(:review).permit(:title, :body, :park, :reviewer)
  end
end
