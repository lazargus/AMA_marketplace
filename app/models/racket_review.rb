class RacketReview < ApplicationRecord
  belongs_to :booking

  validates :rating, presence: true, inclusion: { in: (0..5) }
  validates :content, presence: true
end
