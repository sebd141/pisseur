class RemoveGenderFromToilet < ActiveRecord::Migration[6.1]
  def change
    remove_column :toilets, :gender, :string
  end
end
