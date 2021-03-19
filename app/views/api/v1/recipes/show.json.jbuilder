json.(@recipe, :id, :name, :protein, :cusine_region, :type_of_food, :vegetarian, :vegan, :health_factor, :on_the_menu, :directions)
json.cookbook @recipe.cookbook.name

json.measurements @recipe.measurements do |measurement|
  json.id measurement.id
  json.type_of_measurement measurement.type_of_measurement
  json.unit measurement.unit
  json.description measurement.description
  json.ingredient_name measurement.ingredient.name
end



