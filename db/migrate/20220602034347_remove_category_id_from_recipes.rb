class RemoveCategoryIdFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :category_id, :integer
  end
end
