class IngredientsRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table(:ingredients_recipes)  do |t|
      t.integer :ingedient_id
      t.integer :recipe_id

    end
  end
end
