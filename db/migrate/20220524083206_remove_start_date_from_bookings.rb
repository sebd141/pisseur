class RemoveStartDateFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :start_date, :integer
  end
end
