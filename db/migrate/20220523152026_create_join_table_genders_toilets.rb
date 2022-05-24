class CreateJoinTableGendersToilets < ActiveRecord::Migration[6.1]
  def change
    create_join_table :genders, :toilets do |t|
      # t.index [:gender_id, :toilet_id]
      # t.index [:toilet_id, :gender_id]
    end
  end
end
