class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :category_id
      t.string :name
      t.string :ingredient
      t.string :instruction
    end
  end
end
