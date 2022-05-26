class Toilet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  enum gender: {
    binary: 0,
    male: 1,
    female: 2,
    non_binary: 3
  }

  # validates :gender, presence: true, inclusion: { :in => ["male", "female", "non-binary"] }

  validates :category, presence: true, inclusion: { :in => ['urinal', 'washing toilet', 'Turkish toilet', 'dry toilet', 'chemical toilet'] }
  validates :price, presence: true
  validates :location, presence: true
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 250, too_long: "%{count} characters is the maximum allowed" }
end
