class CreateGenderToilets < ActiveRecord::Migration[6.1]
  def change
    create_table :gender_toilets do |t|
      t.integer :gender_id
      t.integer :toilet_id

      t.timestamps
    end
  end
end
