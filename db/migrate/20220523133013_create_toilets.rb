class CreateToilets < ActiveRecord::Migration[6.1]
  def change
    create_table :toilets do |t|

      t.timestamps
    end
  end
end
