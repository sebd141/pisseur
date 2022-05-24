class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :start_date
      t.integer :end_date
      t.boolean :status

      t.timestamps
    end
  end
end
