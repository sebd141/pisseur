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

# if Rails.env.development?
#   puts "Destroying Data Base"
#   Toilet.destroy_all
#   Review.destroy_all
#   Booking.destroy_all
#   Gender.destroy_all
#   User.destroy_all
# end

# puts "Generating Data Base"

# bob = User.create!(email: "archi@example.com", password: "password")

# # Toilet.create!({name: "Terminator", description: "This toilet is the best toilet ever...", price: "4$", location: "BeCentral", category: "Turkish toilet", user: user})

# toilet = Toilet.new(name: "Terminator", description: "This toilet is the best toilet ever...", price: "4$", location: "BeCentral", category: "Turkish toilet")
# debugger
# toilet.user = bob


# toilet.save!

# puts "Seed completed!"
