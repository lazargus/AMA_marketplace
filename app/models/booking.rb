class Booking < ApplicationRecord
  belongs_to :racket, :user

  has_many :racket_reviews, :user_reviews

  validates :start_date, :end_date, presence: true
end
