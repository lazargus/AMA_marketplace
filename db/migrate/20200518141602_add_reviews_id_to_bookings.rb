class AddReviewsIdToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :user_review, foreign_key: true
    add_reference :bookings, :racket_review, foreign_key: true
  end
end
