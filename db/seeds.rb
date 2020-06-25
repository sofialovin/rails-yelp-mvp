require 'faker'

puts "Creating restaurants..."

5.times do
  name = Faker::Hipster.word
  address = Faker::Address.street_address
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.create!(name: name, address: address, category: category)
    5.times do
      content = Faker::Quote.matz
      rating = [0..5].sample
      review = Review.create!(content: content, rating: rating)
      review.restaurant = restaurant
    end
  puts "Restaurant #{name} created, with Reviews: #{review.content}"
end

puts "All restaurants created"





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
