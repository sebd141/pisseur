class AddCategoryToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :category, :string
  end
end
