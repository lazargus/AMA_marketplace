class Racket < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews
  belongs_to :user
  has_one_attached :photo

  validates :description, :price, :location, :model, :photo, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
