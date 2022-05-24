class CreateToiletGenders < ActiveRecord::Migration[6.1]
  def change
    create_table :toilet_genders do |t|
      t.references :gender, null: false, foreign_key: true
      t.references :toilet, null: false, foreign_key: true
    end
  end
end
