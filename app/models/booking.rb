class Booking < ApplicationRecord
  belongs_to :toilets
  belongs_to :users

  validates :start_date, presence: true
  attribute :status, default: true
  attribute :end_date, default: :start_date + 15.minutes
end
