# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurant_1 = Restaurant.create(name: "Pollo Campero", email: "campero@campero.com", password: "password", password_confirmation: "password", address: "1234 Madison St", phone: "444-444-4444", category: "Fast Food")

special_1 = restaurant_1.specials.create(name: "Combo 6", description: "Dos piezas de pollo con pan, papitas y ensalada", price: 100, delivery: true)

