class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rackets, :bookings, dependent: :destroy
  has_many :user_reviews, through: :bookings, dependent: :destroy
end
