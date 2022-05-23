class Gender < ApplicationRecord
  has_and_belongs_to_many :toilets
  validates :gender, presence: true, inclusion: { :in => ['male', 'female', 'non-binary'] }
end
