json.rating do
  json.id @rating.id
  json.food @rating.food
  json.service @rating.service
  json.ambiance @rating.ambiance
  json.noise @rating.noise
  json.overall_rating @rating.overall_rating
  json.average_rating @rating.average_rating
  json.resturant_id @rating.resturant_id
end