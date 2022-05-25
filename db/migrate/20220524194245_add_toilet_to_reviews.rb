class AddToiletToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :toilet, null: false, foreign_key: true
  end
end
