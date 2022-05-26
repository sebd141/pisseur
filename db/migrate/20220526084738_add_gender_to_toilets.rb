class AddGenderToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :gender, :integer, default: 0
  end
end
