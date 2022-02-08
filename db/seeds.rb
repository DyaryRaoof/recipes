# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


dyary = User.create!(name: 'Dyary Raoof', email: 'dyary2020@gmail.com', password: '123456', password_confirmation: '123456')
mustafa = User.create!(name: 'Dyary Raoof', email: 'mustafa@gmail.com', password: '123456', password_confirmation: '123456')

mustafa.foods.create!(name: 'Apple', measurement_unit: 'kg', price: 1.00);
mustafa.foods.create!(name: 'Tomato', measurement_unit: 'kg', price: 2.00);

dyary.foods.create!(name: 'Apple', measurement_unit: 'kg', price: 1.00);
dyary.foods.create!(name: 'Tomato', measurement_unit: 'kg', price: 2.00);
dyary.foods.create!(name: 'Potato', measurement_unit: 'kg', price: 3.00);
dyary.foods.create!(name: 'Lemon', measurement_unit: 'kg', price: 1.5);
