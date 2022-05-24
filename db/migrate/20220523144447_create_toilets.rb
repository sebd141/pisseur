class CreateToilets < ActiveRecord::Migration[6.1]
  def change
    create_table :toilets do |t|
      t.string :gender
      t.string :location
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
