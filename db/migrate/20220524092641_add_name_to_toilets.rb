class AddNameToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :name, :string
  end
end
