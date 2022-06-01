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
        ingredients: ["1 pound cream cheese, softened", "1 pound ricotta cheese", "1 ½ cups white sugar", "4 eggs", "¼ cup butter, melted and cooled", "3 tablespoons all-purpose flour", "3 tablespoons cornstarch", "2 ½ teaspoons vanilla extract", "2 cups sour cream", "2 tablespoons lemon juice (Optional)"],
        instructions: ["Preheat oven to 325 degrees F (165 degrees C). Move an oven rack to the middle of the oven.", "Beat the cream cheese, ricotta cheese, and sugar in a large mixing bowl with an electric mixer until well combined. Beat in the eggs, one at a time. Add the butter, flour, cornstarch, and vanilla extract; mix until well combined. Fold in the sour cream and lemon juice. Pour the mixture into an ungreased 10-inch springform pan.", "Bake in the preheated oven for 1 hour. Turn off the oven and leave the cheesecake in the oven for 2 more hours. Remove from oven and let cool completely. Run a thin spatula around the edge of the cheesecake before springing open the pan to remove. Serve at room temperature or cold; refrigerate leftovers."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F6864754.jpg&w=596&h=596&c=sc&poi=face&q=60"
    },
    {
        category_id: c9.id,
        name: "Baked Garlic Parmesan Chicken",
        ingredients: ["2 tablespoons olive oil", "1 clove garlic, minced", "1 cup dry bread crumbs", "⅔ cup grated Parmesan cheese", "1 teaspoon dried basil leaves", "¼ teaspoon ground black pepper", "6 skinless, boneless chicken breast halves"],
        instructions: ["Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x13 inch baking dish.", "In a bowl, blend the olive oil and garlic. In a separate bowl, mix the bread crumbs, Parmesan cheese, basil, and pepper. Dip each chicken breast in the oil mixture, then in the bread crumb mixture. Arrange the coated chicken breasts in the prepared baking dish, and top with any remaining bread crumb mixture.", "Bake 30 minutes in the preheated oven, or until chicken is no longer pink and juices run clear."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F09%2F10%2F618489.jpg"
    },
    {
        category_id: c1.id,
        name: "Butternut Squash Soup",
        ingredients: ["2 tablespoons butter", "1 small onion, chopped", "1 stalk celery, chopped", "1 medium carrot, chopped", "2 medium potatoes, cubed", "1 medium butternut squash - peeled, seeded, and cubed", "1 (32 fluid ounce) container chicken stock", "salt and freshly ground black pepper to taste"],
        instructions: ["Melt butter in a large pot over medium heat, and cook onion, celery, carrot, potatoes, and squash until lightly browned, about 5 minutes. Pour in enough of the chicken stock to cover vegetables.", "Bring to a boil over medium-high heat. Reduce heat to low, cover pot, and simmer until all vegetables are tender, about 40 minutes.", "Transfer the soup to a blender, and blend until smooth. Return to the pot, and mix in any remaining stock to reach desired consistency. Season with salt and pepper."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F04%2F25%2F77981-Butternut-Squash-Soup-II-mfs_Step5_006-1x1-1.jpg"
    },
    {
        category_id: c8.id,
        name: "Italian Baked Meatballs",
        ingredients: ["1 cup Italian-seasoned bread crumbs", "¼ cup grated Romano cheese", "2 tablespoons chopped fresh parsley", "½ teaspoon salt", "½ teaspoon ground black pepper", "½ teaspoon garlic powder", "½ teaspoon onion powder", "½ cup water", "2 eggs", "1 ½ pounds ground beef"],
        instructions: ["Preheat the oven to 350 degrees F (175 degrees C).", "Mix bread crumbs, Romano cheese, parsley, salt, pepper, garlic powder, and onion powder together. Combine with water and eggs. Add ground beef and mix well. Roll mixture into balls and place on a nonstick baking sheet.", "Bake in the preheated oven until browned, about 30 minutes."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F05%2F15%2F5834922-italian-baked-meatballs-kim-1x1-1.jpg"
    },
    {
        category_id: c5.id,
        name: "Apple Curry Turkey Pita",
        ingredients: ["2 tablespoons olive oil", "1 cup sliced onion", "2 tablespoons lemon juice", "½ pound cooked turkey, cut into chunks", "1 tablespoon curry powder, or to taste", "1 medium apple, cored and thinly sliced", "3 pita bread rounds", "½ cup plain yogurt"],
        instructions: ["Heat oil in a skillet over medium-high heat. Stir in onion and lemon juice. Cook until onion is tender. Mix in turkey, season with curry powder and continue cooking until heated through.", "Remove from heat. Stir in apple. Stuff pitas with the mixture. Drizzle with yogurt to serve."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F3087557.jpg&w=596&h=596&c=sc&poi=face&q=60"
    },
    {
        category_id: c3.id,
        name: "Sweet Restaurant Slaw",
        ingredients: ["1 (16 ounce) bag coleslaw mix", "2 tablespoons diced onion", "⅔ cup creamy salad dressing (such as Miracle Whip™)", "3 tablespoons vegetable oil", "½ cup white sugar", "1 tablespoon white vinegar", "¼ teaspoon salt", "½ teaspoon poppy seeds"],
        instructions: ["Combine the coleslaw mix and onion in a large bowl", "Whisk together the salad dressing, vegetable oil, sugar, vinegar, salt, and poppy seeds in a medium bowl; blend thoroughly. Pour dressing mixture over coleslaw mix and toss to coat. Chill at least 2 hours before serving."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F2276935.jpg"
    },
    {
        category_id: c4.id,
        name: "Muffin Pan Frittatas",
        ingredients: ["cooking spray", "1 tablespoon olive oil", "1 cup chopped fresh asparagus", "¼ cup chopped green bell pepper", "2 tablespoons chopped red onion", "6 eggs", "½ cup milk", "¼ teaspoon salt", "⅛ teaspoon ground black pepper", "1 cup shredded Cheddar cheese"],
        instructions: ["Preheat oven to 350 degrees F (175 degrees C). Spray 12 muffin cups with cooking spray.", "Heat olive oil in a skillet over medium heat; cook and stir asparagus, green bell pepper, and onion in the hot oil until softened, 5 to 10 minutes.", "Whisk eggs, milk, salt, and black pepper together in a bowl. Mix cooked vegetables and Cheddar cheese into egg mixture. Spoon about 1/4 cup mixture into each muffin cup.", "Bake in the preheated oven until frittatas are set in the middle and lightly browned, about 20 minutes."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1014975.jpg"
    },
    {
        category_id: c7.id,
        name: "Chef John's Pulled Pork BBQ",
        ingredients: ["3 tablespoons dry barbeque rub, or more as needed", "1 (3 1/2) pound bone-in pork shoulder blade roast", "½ teaspoon liquid smoke flavoring, divided", "1 cup water, divided", "¾ cup barbeque sauce, or as needed", "salt and freshly ground black pepper to taste", "12 soft white hamburger buns", "¾ cup barbeque sauce, divided"],
        instructions: ["Preheat oven to 210 degrees F (100 degrees C).", "Sprinkle dry rub generously on all sides of pork roast and place meat into a heavy pan or Dutch oven.", "Pour 1/4 teaspoon of liquid smoke flavoring into each of two 6-ounce ramekins; fill ramekins with 1/2 cup water each. Place ramekins into the Dutch oven on either side of the roast. Place lid onto Dutch oven.", "Roast pork in the preheated oven until very tender, 12 hours. Remove roast from Dutch oven, place onto a work surface (such as a cutting board), and separate the meat from the bone using your fingers. Discard any large pieces of fat.", "Roughly chop pork with a large knife or cleaver; drizzle with 3/4 cup barbeque sauce. Season with salt and black pepper.", "Spread about 1 tablespoon barbeque sauce onto each bun and pile pork on buns to serve."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F3533730.jpg"
    },
    {
        category_id: c10.id,
        name: "Chef John's Sourdough Bread",
        ingredients: ["100 grams sourdough starter", "250 grams water", "8 grams kosher salt", "394 grams bread flour", "rice flour for bread form (banneton)", "1 10-inch banneton (proofing basket)"],
        instructions: ["Measure out starter into a bowl. Add water, salt, and bread flour. Mix until ingredients are well blended into a very sticky dough. Cover with aluminum foil; let rest 4 hours at 70 to 75 degrees F (22 degrees C).", "With wet hands, fold dough over on itself 3 or 4 times. Cover with foil and allow dough to ferment for 2 more hours.", "Generously dust a bread form with rice flour (see Chef's Note for banneton substitution).", "Scrape dough out onto a lightly floured work surface (you can use bread flour or all-purpose flour). Shape into a ball with a smooth, unbroken surface, using just enough flour on the surface to keep it from sticking. Transfer smooth-side down to banneton. Pinch together the rougher edges of the surface toward the center to smooth them and maintain the round ball shape.", "Cover and refrigerate 12 hours to slow the fermentation process.", "Remove loaf from the refrigerator and let it rise in a warm spot until the dough springs slowly back and retains a slight indentation when poked gently with a finger, about 3 to 5 hours.", "Preheat oven to 450 degrees F (230 degrees C). Line a rimmed baking sheet with parchment paper.", "Dust surface of dough with flour. Gently invert banneton over the baking sheet and transfer dough onto parchment paper. Gently brush off excess rice flour. Score the top of the dough about 1/8-inch deep with a sharp knife to create a shallow slit running across the center. Mist entire surface lightly with water.", "Bake in the center of preheated oven until beautifully browned, 25 to 30 minutes.", "Transfer to a rack to cool completely (do not slice loaf while it is still warm)."],
        image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F6103033.jpg"
    }
]

recipes = recipe_list.map do |recipe|
    Recipe.create(recipe)
end

puts "✅ Done seeding!"
