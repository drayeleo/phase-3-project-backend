puts "🌱 Seeding spices..."

# Seed your database here

# Category table
Category.create(name: "soup")
Category.create(name: "dessert")
Category.create(name: "salad")
Category.create(name: "breakfast")
Category.create(name: "lunch")
Category.create(name: "dinner")
Category.create(name: "pork")
Category.create(name: "beef")
Category.create(name: "chicken")
Category.create(name: "bread")

# Recipe table
Recipe.create(name: "")

puts "✅ Done seeding!"
