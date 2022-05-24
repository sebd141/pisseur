class Toilet < ApplicationRecord
  belongs_to :users
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :genders

  validates :type, presence: true, inclusion: { :in => ['urinal', 'washing toilet', 'Turkish toilet', 'dry toilet', 'chemical toilet'] }
  validates :price, presence: true
  validates :location, presence: true
  validates :name, presence: true
  validates :description
end
