class AddReviewsIdToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_reviews, :booking, foreign_key: true
    add_reference :racket_reviews, :booking, foreign_key: true
  end
end
