# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
require 'faker'

puts 'Deleting previous seed...'
Ingredient.destroy_all
Cocktail.destroy_all

puts 'Creating ingredients...'
Ingredient.create(name: "lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint Leaves")

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_serialized = open(url).read
drinks = JSON.parse(drinks_serialized)

drinks['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

# puts 'Creating drinks...'
# 10.times do
#   drink = Cocktail.new(name: Faker::Beer.name)
#   drink.save
# end

puts 'Finished'
