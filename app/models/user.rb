class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rackets, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :rentals, through: :rackets, source: :bookings
  has_one_attached :avatar
end
