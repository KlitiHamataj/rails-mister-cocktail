url_ingredients = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(URI.parse(url_ingredients).open.string)

puts 'Destroying previous ingredients...'

Ingredient.destroy_all

puts 'Creating ingredients...'

ingredients['drinks'].each do |ingredient|
Ingredient.create!(name: ingredient['strIngredient1'])
end

puts 'Ingredients created'