# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "faker"


# puts 'Creating 5 toilets...'
# toilets =[]
# 5.times do |i|
#   i = Toilet.create!(
#     name: Faker::Company.name,
#     type: 1
#   )
#   toilets << i
# end

require 'faker'

user = User.create({email: "archi_legrand@example.com", password: "lewagon"})

puts "Cleaning database..."
Toilet.destroy_all

puts "Creating Toilets.."
25.times do
  toilet = Toilet.create!(
    name: Faker::Name.middle_name,
    location: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.paragraph,
    price: Faker::Number.number(digits: 2),
    category: ['urinal', 'washing toilet', 'Turkish toilet', 'dry toilet', 'chemical toilet'].sample,
    user: user
  )
  toilet.save!
end
puts "Finished!"
