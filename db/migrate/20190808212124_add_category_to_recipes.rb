class AddCategoryToRecipes < ActiveRecord::Migration[5.2]
  def change
    change_table :recipes do |t|
      t.references :categories, index: true
    end
  end
end
