class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = review.new(review_params)
    @review.save
    redirect_to reviews_path(@review)
  end

  def show
    @review = review.find(params[:id])
    # ou de restaurant_id?
  end

  private

  def review_params
  params.require(:review).permit(:content, :rating)
  end
end
