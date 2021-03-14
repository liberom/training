# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Deleting previous seed...'
Product.destroy_all
puts 'Creating products...'
10.times do
  product = Product.new(name: Faker::Appliance.equipment, description: Faker::Lorem.sentence, category: 'festa corporativa', price: 100)
  product.save
end
puts 'Finished!'
