class Toilet < ApplicationRecord
  has_many :users, through: reservation
  has_many :reservations
  has_many :reviews, through: reservation
end
