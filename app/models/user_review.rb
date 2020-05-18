class UserReview < ApplicationRecord
  belongs_to :user, through: :bookings
end
