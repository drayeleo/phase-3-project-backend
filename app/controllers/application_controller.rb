class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Categories CRUD
  get "/categories" do
    Category.all.to_json
  end

  # Recipes CRUD
  get "/recipes" do
    Recipe.all.to_json
  end

  get "/recipes/:id" do
    Recipe.find(params[:id]).to_json(include: :categories)
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
    new_recipe.to_json
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
    recipe.to_json
  end

  delete "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipe.to_json
  end
end
