# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Destroy existing records to avoid duplicates

Recipe.destroy_all

# Create recipes
spaghetti = Recipe.create!(name: "Spaghetti Carbonara",
description: "A true Italian Carbonara recipe, it's ready in about 30 minutes.",
image_url: "https://www.pexels.com/photo/pasta-serving-in-restaurant-12918198/",
rating: 8.5)
pancakes = Recipe.create!(name: "Fluffy Pancakes",
description: "Soft and fluffy pancakes that are perfect for breakfast.",
image_url: "https://www.pexels.com/photo/pancakes-with-black-berries-on-white-ceramic-plate-3780469/",
rating: 9.0)
salad = Recipe.create!(name: "Caesar Salad",
description: "A classic Caesar salad with a creamy dressing.",
image_url: "https://www.pexels.com/photo/vegetable-dish-in-bowl-1406336/",
rating: 7.5)
soup = Recipe.create!(name: "Tomato Soup",
description: "A warm and comforting tomato soup.",
image_url: "https://www.pexels.com/photo/soup-with-vegetables-on-white-ceramic-bowl-3493579/",
rating: 8.0)
