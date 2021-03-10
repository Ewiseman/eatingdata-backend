json.array! @recipes do |recipe|
  json.id recipe.id
  json.name recipe.name
  json.protein recipe.protein
  json.multiplier recipe.multiplier
  json.cookbook_id recipe.cookbook_id
  json.cookbook_name recipe.cookbook.name
end