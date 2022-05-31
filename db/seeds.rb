puts "🌱 Seeding spices..."
Category.destroy_all
Recipe.destroy_all

# Seed your database here

# Category table
c1 = Category.create(name: "soup")
c2 = Category.create(name: "dessert")
c3 = Category.create(name: "salad")
c4 = Category.create(name: "breakfast")
c5 = Category.create(name: "lunch")
c6 = Category.create(name: "dinner")
c7 = Category.create(name: "pork")
c8 = Category.create(name: "beef")
c9 = Category.create(name: "chicken")
c10 = Category.create(name: "bread")

# Recipe table
recipe_list = [
    {
        category_id: c2.id,
        name: "New York Italian Style Cheesecake",
        ingredients: [
            "1 pound cream cheese, softened", 
            "1 pound ricotta cheese", 
            "1 ½ cups white sugar", 
            "4 eggs", "¼ cup butter, melted and cooled",
             "3 tablespoons all-purpose flour", 
             "3 tablespoons cornstarch", 
             "2 ½ teaspoons vanilla extract", 
             "2 cups sour cream", 
             "2 tablespoons lemon juice (Optional)"
        ],
        instructions: [
            "Preheat oven to 325 degrees F (165 degrees C). Move an oven rack to the middle of the oven.",
            "Beat the cream cheese, ricotta cheese, and sugar in a large mixing bowl with an electric mixer until well combined. Beat in the eggs, one at a time. Add the butter, flour, cornstarch, and vanilla extract; mix until well combined. Fold in the sour cream and lemon juice. Pour the mixture into an ungreased 10-inch springform pan.",
            "Bake in the preheated oven for 1 hour. Turn off the oven and leave the cheesecake in the oven for 2 more hours. Remove from oven and let cool completely. Run a thin spatula around the edge of the cheesecake before springing open the pan to remove. Serve at room temperature or cold; refrigerate leftovers.",
        ],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F6864754.jpg&w=596&h=596&c=sc&poi=face&q=60"
    },
    {
        category_id: c9.id,
        name: "Baked Garlic Parmesan Chicken",
        ingredients: [
            "2 tablespoons olive oil",
            "1 clove garlic, minced",
            "1 cup dry bread crumbs",
            "⅔ cup grated Parmesan cheese",
            "1 teaspoon dried basil leaves",
            "¼ teaspoon ground black pepper",
            "6 skinless, boneless chicken breast halves"
        ],
        instructions: [
            "Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x13 inch baking dish.",
            "In a bowl, blend the olive oil and garlic. In a separate bowl, mix the bread crumbs, Parmesan cheese, basil, and pepper. Dip each chicken breast in the oil mixture, then in the bread crumb mixture. Arrange the coated chicken breasts in the prepared baking dish, and top with any remaining bread crumb mixture.",
            "Bake 30 minutes in the preheated oven, or until chicken is no longer pink and juices run clear."
        ],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F09%2F10%2F618489.jpg"
    }
]

recipes = recipe_list.map do |recipe|
    Recipe.create(recipe)
end

puts "✅ Done seeding!"
