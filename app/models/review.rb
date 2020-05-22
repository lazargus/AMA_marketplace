class Review < ApplicationRecord
  belongs_to :user
  belongs_to :racket

  validates :content, :rating, presence: true

end
