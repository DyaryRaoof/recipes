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

dyary.recipes.create!(name: 'Apple Pie', description: 'A delicious apple pie', preparation_time: 30, cooking_time: 60, public: true);
dyary.recipes.create!(name: 'Tomato Pie', description: 'A delicious tomato pie', preparation_time: 30, cooking_time: 60, public: false);
dyary.recipes.create!(name: 'Potato Pie', description: 'A delicious potato pie', preparation_time: 30, cooking_time: 60, public: false);
dyary.recipes.create!(name: 'Lemon Pie', description: 'A delicious lemon pie', preparation_time: 30, cooking_time: 60, public: true);


dyary.recipes[1].recipe_foods.create!(food_id: Food.first.id, quantity: 3);
dyary.recipes[1].recipe_foods.create!(food_id: Food.all[1].id, quantity: 3);
dyary.recipes[2].recipe_foods.create!(food_id: Food.all[2].id, quantity: 3);
dyary.recipes[2].recipe_foods.create!(food_id: Food.all[2].id, quantity: 2);


