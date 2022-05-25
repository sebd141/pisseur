class Booking < ApplicationRecord
  belongs_to :toilet
  belongs_to :user

  validates :start_date, presence: true
  attribute :status, default: true
  def end_date
    :start_date + 15.minutes
  end
end
