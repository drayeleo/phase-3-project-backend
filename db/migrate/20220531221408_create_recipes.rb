class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :category_id
      t.string :name
      t.string :ingredients
      t.string :instructions
      t.string :image_url
    end
  end
end
