class CreateGendersToilets < ActiveRecord::Migration[6.1]
  def change
    create_table :genders_toilets do |t|
      t.references :gender, null: false, foreign_key: true
      t.references :toilet, null: false, foreign_key: true
    end
  end
end
