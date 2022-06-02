class RenameRecipesCategoriesToRecipeCategories < ActiveRecord::Migration[6.1]
  def change
    rename_table("recipes_categories", "recipe_categories")
  end
end
