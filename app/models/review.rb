class Review < ApplicationRecord
  belongs_to :toilet

  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
