require 'json'
require 'open-uri'# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database ......."
Ingredient.destroy_all
Cocktail.destroy_all

puts "Creating ingredients and cocktails..."

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients['drinks'].each do | ingredient |
  Ingredient.create(
    name: ingredient['strIngredient1']
    )
end

Cocktail.create(name: "Gin & Tonic", picture_url: 'https://images.pexels.com/photos/616834/pexels-photo-616834.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
Cocktail.create(name: "Martini", picture_url: 'https://images.unsplash.com/photo-1575023782549-62ca0d244b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80')
Cocktail.create(name: "Vodka Tonic", picture_url: 'https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
Cocktail.create(name: "Bloody Mary", picture_url: 'https://images.unsplash.com/photo-1551734322-f43b0798585a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
Cocktail.create(name: "Margarita", picture_url: 'https://images.pexels.com/photos/2480828/pexels-photo-2480828.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
Cocktail.create(name: "Shirly Temple", picture_url: 'https://images.unsplash.com/photo-1574179725378-4c0bdeb01d2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1436&q=80')

puts "Finished!"
