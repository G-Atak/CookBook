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

# Destroy existing records to avoid duplicates

Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A traditional Roman pasta dish made with eggs, cheese, pancetta, and pepper.",
  image_url: "https://www.pexels.com/photo/pasta-with-vegetables-and-meat-on-a-white-plate-4518833/",
  rating: 5
)

Recipe.create!(
  name: "Caesar Salad",
  description: "A classic salad made with romaine lettuce, croutons, and Caesar dressing.",
  image_url: "https://www.pexels.com/photo/close-up-photo-of-vegetable-salad-with-boiled-egg-2092903/",
  rating: 5
)

Recipe.create!(
  name: "Pancakes",
  description: "Fluffy American-style pancakes, perfect for breakfast.",
  image_url: "https://www.pexels.com/photo/pancake-with-raspberries-407041/",
  rating: 5
)

Recipe.create!(
  name: "Grilled Cheese Sandwich",
  description: "A quick and easy grilled cheese sandwich, crispy on the outside and melty inside.",
  image_url: "https://www.pexels.com/photo/a-grilled-cheese-sandwich-on-a-wooden-board-13689918/",
  rating: 5
)
