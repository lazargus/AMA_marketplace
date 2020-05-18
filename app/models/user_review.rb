class UserReview < ApplicationRecord
  belongs_to :user, through: :bookings

  validates :rating, presence: true, inclusion: { in: (0..5) }
  validates :content, presence: true
end
