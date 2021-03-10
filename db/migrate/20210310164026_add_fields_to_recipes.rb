class AddFieldsToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :type_of_food, :string
    remove_column :recipes, :front_end_id
  end
end
