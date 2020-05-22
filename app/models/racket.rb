class Racket < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews
  belongs_to :user
  has_one_attached :photo

  validates :description, :price, :location, :model, :photo, presence: true
  validates :model, length: { maximum: 50 }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :location],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

 pg_search_scope :search_by_model,
  against: [ :model],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
