class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string "name"
      t.string "protein"
      t.string "cusine_region"
      t.boolean "on_the_menu", default: false
      t.boolean "vegetarian", default: false
      t.boolean "vegan", default: false
      t.boolean "dairy_free", default: false
      t.text "directions"
      t.integer "multiplier", default: 1
      t.integer "health_factor"
      t.timestamps
    end
  end
end
