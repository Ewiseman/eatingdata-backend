json.array! @recipes do |recipe|
  json.id recipe.id
  json.name recipe.name
  json.protein recipe.protein
  json.multiplier recipe.multiplier
  json.on_the_menu recipe.on_the_menu
  json.cookbook_name recipe.cookbook.name
end