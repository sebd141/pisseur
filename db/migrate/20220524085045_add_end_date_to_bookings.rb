class AddEndDateToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :end_date, :datetime
  end
end
