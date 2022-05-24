class AddDescriptionToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :description, :text
  end
end
