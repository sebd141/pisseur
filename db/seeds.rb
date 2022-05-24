# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "faker"


<<<<<<< HEAD
puts 'Creating 5 toilets...'
toilets = []
5.times do |i|
  i = Toilet.create!(
    name: Faker::Company.name,
    type: 'urinal',
    location: "france",
    description: "my best toilet",
    price: 100
  )
  toilets << i
end

# validates :price, presence: true
# validates :location, presence: true
# validates :name, presence: true
# validates :description, presence: true
=======
# puts 'Creating 5 toilets...'
# toilets =[]
# 5.times do |i|
#   i = Toilet.create!(
#     name: Faker::Company.name,
#     type: 1
#   )
#   toilets << i
# end

Toilet.create!({name: "Terminator", description: "This toilet is the best toilet ever...", price: "4$", location: "BeCentral", category: "Turkish Toilet"  })
>>>>>>> master
