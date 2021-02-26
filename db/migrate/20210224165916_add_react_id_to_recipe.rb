class AddReactIdToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :react_id, :integer
  end
end
