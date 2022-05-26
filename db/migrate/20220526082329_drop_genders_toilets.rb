class DropGendersToilets < ActiveRecord::Migration[6.1]
  def change
    drop_table :genders_toilets
  end
end
