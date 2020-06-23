require 'faker'

puts "Creating restaurants..."

5.times do
  name = Faker::Hipster.word
  address = Faker::Address.street_address

  Restaurant.create(name: name, address: address)
  puts "Restaurant #{name} created"
end

puts "All restaurants created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
