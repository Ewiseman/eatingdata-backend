class RenameReactIdInRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :react_id, :front_end_id
  end
end
