json.reservation do
  json.id @reservation.id
  json.total_person @reservation.total_person
  json.special_request @reservation.special_request
  json.user_contact @reservation.user_contact
  json.note @reservation.note
  json.user_id @reservation.user_id
  json.resturant_id @reservation.resturant_id
  json.time_slot_id @reservation.time_slot_id
end