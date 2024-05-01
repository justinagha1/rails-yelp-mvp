# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

puts "Creating seeds"

chinese_restaurant = Restaurant.create(name: "chinese_restaurant", address: "oxford street one", phone_number: "01234 555555", category: "chinese")
italian_restaurant = Restaurant.create(name: "italian_restaurant", address: "oxford street two", phone_number: "01234 666666", category: "italian")
japanese_restaurant = Restaurant.create(name: "japanese_restaurant", address: "oxford street three", phone_number: "01234 777777", category: "japanese")
french_restaurant = Restaurant.create(name: "french_restaurant", address: "oxford street four", phone_number: "01234 888888", category: "french")
belgian_restaurant = Restaurant.create(name: "belgian_restaurant", address: "oxford street five", phone_number: "01234 999999", category: "belgian")

puts "Seeds created!"
