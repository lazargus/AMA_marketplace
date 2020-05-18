class RacketReview < ApplicationRecord
  belongs_to :racket, through: :bookings
end
