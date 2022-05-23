class Toilet < ApplicationRecord
  belongs_to :users
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :genders
end
