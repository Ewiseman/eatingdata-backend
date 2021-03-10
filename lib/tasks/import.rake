require 'csv'

namespace :import do
    
    desc "Import Cookbooks from CSV"
    task cookbooks: :environment do 
        filename = File.join Rails.root, "cookbooks.csv"
        CSV.foreach(filename) do |row|
            id, name = row
            Cookbook.create(name: name, id: id)
        end
    end

    desc "Import Recipes from CSV"
    task recipes: :environment do 
        filename = File.join Rails.root, "recipes.csv"
        CSV.foreach(filename) do |row|
            id,name,protein,cookbook_page,cusine_region,type_of_food,on_the_menu,vegetarian,vegan,dairy_free,created_at,updated_at,directions,multiplier,rank,cookbook_id = row
            Recipe.create!(id: id, 
                        name: name,
                        protein: protein, 
                        cusine_region: cusine_region,
                        type_of_food: type_of_food,
                        on_the_menu: on_the_menu,
                        vegetarian: vegetarian,
                        vegan: vegan,
                        dairy_free: dairy_free,
                        directions: directions,
                        multiplier: multiplier,
                        cookbook_id: cookbook_id)
        end
    end

    desc "Import Ingredients from CSV"
    task ingredients: :environment do 
        filename = File.join Rails.root, "ingredients.csv"
        CSV.foreach(filename) do |row|
            id,name,category,created_at,updated_at = row
            Ingredient.create!(id: id, 
                        name: name,
                        category: category, 
                       )
        end
    end

    desc "Import Measurements from CSV"
    task measurements: :environment do 
        filename = File.join Rails.root, "measurements.csv"
        CSV.foreach(filename) do |row|
            id,unit,type_of_measurement,description,recipe_id,ingredient_id,created_at,updated_at,ingredient_order = row
            Measurement.create!(id: id, 
                        unit: unit,
                        type_of_measurement: type_of_measurement, 
                        description: description,
                        recipe_id: recipe_id,
                        ingredient_id: ingredient_id
                       )
        end
    end

end 