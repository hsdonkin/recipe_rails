# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.destroy_all
Ingredient.destroy_all

50.times do
  recipe = Recipe.new(:title => Faker::Food.dish)
  5.times do
    recipe.ingredients.new(:name => Faker::Food.ingredient)
    recipe.save
  end
end
