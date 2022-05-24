class RemoveTypeFromToilets < ActiveRecord::Migration[6.1]
  def change
    remove_column :toilets, :type, :string
  end
end
