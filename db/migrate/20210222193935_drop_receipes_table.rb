class DropReceipesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :receipes
  end
end
