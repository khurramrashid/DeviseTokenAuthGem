json.offer do
  json.id @offer.id
  json.resturant_id @offer.resturant_id
  json.time_slot_id @offer.time_slot_id
  json.points_giving @offer.points_giving
  json.deals_giving @offer.deals_giving
end