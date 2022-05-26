# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "faker"




# validates :price, presence: true
# validates :location, presence: true
# validates :name, presence: true
# validates :description, presence: true

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
# require 'open-uri'

puts "Cleaning database..."
if Rails.env.development?
  Toilet.destroy_all
  Review.destroy_all
  Booking.destroy_all
  User.destroy_all
end
puts "Creating User"

bob = User.create({email: "archi_legrand@example.com", password: "lewagon"})

# puts "Uploading Photo"
# file = URI.open('https://royaltoiletry.com/wp-content/uploads/2019/10/Classic-Plain-Gold-Toilet-1.jpg')

puts "Creating Toilets.."
20.times do
  Toilet.create!(
    name: Faker::Name.middle_name,
    location: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.paragraph,
    price: Faker::Number.number(digits: 2),
    category: ['urinal', 'washing toilet', 'Turkish toilet', 'dry toilet', 'chemical toilet'].sample,
    user: bob,
    gender: [0, 1, 2, 3].to_s.sample
  )
end

# puts "Attaching Photos"
# debugger
# Toilet.all.each do |toilet|
#   toilet.photo.attach(io: file, filename: 'Toilet.jpeg', content_type: 'image/jpeg')
#   toilet.save!
# end

puts "Finished!"
