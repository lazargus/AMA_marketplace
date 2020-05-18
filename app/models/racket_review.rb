class RacketReview < ApplicationRecord
  belongs_to :racket, through: :bookings

  validates :rating, presence: true, inclusion: { in: (0..5) }
  validates :content, presence: true
end
