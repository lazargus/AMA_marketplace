class Racket < ApplicationRecord
  has_many :bookings
  has_many :racket_reviews, through: :bookings
  belongs_to :user

  validates :description, :price, :location, :model, presence: true

end
