class AddCookbookToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipes, :cookbook
  end
end
