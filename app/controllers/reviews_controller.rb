class ReviewsController < ApplicationController

  def new
    @review = Review.new
    authorize @review
    @racket = Racket.find(params[:racket_id])
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @racket = Racket.find(params[:racket_id])
    @review.racket = @racket
    @review.user = current_user
    if @review.save!
      redirect_to racket_path(@racket), notice: 'Review was successfully added. Thank you!'
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

private

def review_params
  params.require(:review).permit(:rating, :content)
end

end
