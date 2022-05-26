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
seb = User.create({email: "sebastien.dellis@gmail.com", password: "lewagon"})

# puts "Uploading Photo"
# file = URI.open('https://royaltoiletry.com/wp-content/uploads/2019/10/Classic-Plain-Gold-Toilet-1.jpg')

puts "Creating Toilets.."
10.times do
  Toilet.create!(
    name: Faker::Name.middle_name,
    location: ['34C, Rue de Thisnes, 4280 Liège', '50, Sint-Barbarastraat, 3920 Lommel', '146, Rue de la Misbour, 6637 Bastogne', '199, Tuinstraat, 8953 Ypres', '41, Rue de la Platinerie, 5660 Philippeville','5A, Groenedijkstraat, 8460 Ostende', '126, Meersveldweg, 9340 Alost', '178, Merktweg, 9310 Alost', '77, Flère, 4860 Pepinster', '16, Rue du Hameau, 7951 Ladeuze'].sample,
    description: Faker::Lorem.paragraph,
    price: Faker::Number.number(digits: 2),
    category: ['urinal', 'washing toilet', 'Turkish toilet', 'dry toilet', 'chemical toilet'].sample,
    user: bob,
    gender: [0, 1, 2, 3].sample
  )
end

puts "Finished!"
