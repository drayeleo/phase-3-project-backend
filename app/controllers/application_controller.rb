class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Categories CRUD
  get "/categories" do
    Category.all.to_json
  end

  get "/categories/:id" do
    Category.find(params[:id]).to_json(include: :recipes)
  end

  post "/categories" do
    new_category = Category.create(name: params[:name])
    new_category.to_json
  end

  # Recipes CRUDs
  get "/recipes" do
    Recipe.all.to_json(methods: [:tags])
  end

  get "/recipes/:id" do
    Recipe.find(params[:id]).to_json(methods: [:tags])
  end

  get "/recipes/search/:searchString" do
    # binding.pry
    Recipe.where("name LIKE ?", "%#{params[:searchString]}%").to_json
  end
  # used this resource: https://stackoverflow.com/questions/5044372/can-you-use-activerecord-to-find-substring-of-a-field-quick-dirty-keyword-fi

  post "/recipes" do
    new_recipe =
      Recipe.create(
        # category_id: params[:category_id],
        name: params[:name],
        ingredients: params[:ingredients],
        instructions: params[:instructions],
        image_url: params[:image_url]
      )
      new_tags = params[:tags]
      new_recipe.tag_edit(new_tags)
    new_recipe.to_json(methods: [:tags])
  end

  patch "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.update(
      # category_id: params[:category_id],
      name: params[:name],
      ingredients: params[:ingredients],
      instructions: params[:instructions],
      image_url: params[:image_url]
    
    )
    new_tags = params[:tags]
      recipe.tag_edit(new_tags)
    recipe.to_json(methods: [:tags])
 
 
    #rc = RecipeCategory.where(recipe_id: params[:id]);
    # Loop through the results
    # Compare the record to what you were given
    # Record is found in what you were given do nothing, remove the record from what you were given
    # If record was not found in what you were given, delete the record
    # Loop through what is left of what you were given and create new record

  end

  delete "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipe.to_json
  end

  get "/recipe-category" do
    RecipeCategory.all.to_json
  end


  
end
