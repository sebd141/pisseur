class Booking < ApplicationRecord
  belongs_to :toilet
  belongs_to :user

  validates :start_date, presence: true
  attribute :status, default: true
  attribute :end_date, default: -> {start_date}
end
