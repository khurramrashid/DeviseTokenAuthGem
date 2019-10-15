json.profile do
  json.id @profile.id
  json.user_id @profile.user_id
  json.name @profile.name
  json.phone_nuumber @profile.phno
  json.home_address @profile.home_address
  json.city @profile.city
  json.country @profile.country
  json.name @profile.name
  json.image @profile.image.url
  json.reservation @profile.reservation
  json.reviews @profile.reviews
  json.image_count @profile.image_count
  json.points_earned @profile.points_earned
end