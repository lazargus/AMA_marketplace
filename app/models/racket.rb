class Racket < ApplicationRecord
  has_many :bookings
  has_many :racket_reviews, through: :bookings
  belongs_to :user
  has_one_attached :photo

  validates :description, :price, :location, :model, :photo, presence: true

end
