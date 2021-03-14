# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  restaurant.save
end
counter = 1
puts 'Creating 5 fake reviews...'
5.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating: [1, 2, 3, 4, 5].sample,
    restaurant: Restaurant.find(counter)
  )
  review.save
  counter += 1
end
puts 'Finished'
