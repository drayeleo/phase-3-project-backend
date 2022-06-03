class Recipe < ActiveRecord::Base
  has_many :recipe_categories
  has_many :categories, through: :recipe_categories

  def tags
    self.categories.map do |category|
      {id: category.id, name: category.name}
    end
  end

  def tag_edit(new_tags)
    # c_ids = self.categories.ids #category_ids that the recipe belongs_to ex [49, 46]
    
    # new_ids = new_tags.map do |tag|
    #   tag[:id]
    # end
    # #look for a new entry
    # create_id = new_ids.reject do |x|
    #   c_ids.include?(x)
    # end
    # #create a new record of the new entry
    # create_id.map do |t|
    #   RecipeCategory.create(recipe_id: self.id, category_id: t[:id])
    # end

    # delete_id = c_ids.reject do |x|
    #   new_ids.exclude?(x)
    # end

    # puts delete_id

    # delete_id.map do |t|
    #   self.destroy_by(category_id: t[:id])
    # end


    self.recipe_categories.destroy_all
    puts new_tags
    puts new_tags.to_json
    new_tags.map do |t|
      RecipeCategory.create(recipe_id: self.id, category_id: t[:id])
    end
  end
    
end
