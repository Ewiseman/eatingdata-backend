json.array! @ingredients do |ingredient|
  json.id ingredient.id
  json.name ingredient.name
  json.category ingredient.category
end