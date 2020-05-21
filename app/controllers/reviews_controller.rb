class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @racket = Racket.find(params[:racket_id])
  end

  def create
    @review = Review.new(review_params)
    @review.racket = Racket.find(params[:racket_id])
    @review.user = current_user
    raise

  end

private

def review_params
  params.require(:review).permit(:rating, :content)
end

end
