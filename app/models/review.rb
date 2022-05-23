class Review < ApplicationRecord
  belongs_to :toilets
  belongs_to :users
end
