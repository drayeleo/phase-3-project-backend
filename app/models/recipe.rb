class Recipe < ActiveRecord::Base
  has_many :recipe_categories
  has_many :categories, through: :recipe_categories

  def tags
    self.categories.map do |category|
      {id: category.id, name: category.name}
    end
  end

  def tag_edit(new_tags)
    # c_ids = self.categories.ids #category_ids that the recipe belongs_to
    # r_id = self.id #recipe id

    # tmp = self.recipe_categories
    # new_tags.map do |t|
    #   if(t.id == r_id)
    self.recipe_categories.destroy_all
    puts new_tags
    puts new_tags.to_json
    new_tags.map do |t|
      RecipeCategory.create(recipe_id: self.id, category_id: t[:id])
    end
  end
    
end
