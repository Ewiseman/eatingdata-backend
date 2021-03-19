class RemoveDiaryFreeFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :dairy_free
  end
end
