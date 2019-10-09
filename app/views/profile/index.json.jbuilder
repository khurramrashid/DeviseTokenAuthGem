json.profile @profiles do |profile|
  json.user_id profile.user_id
  json.name profile.name
  json.phno profile.phno
  json.homeaddress profile.home_address
  json.city profile.city
  json.country profile.country
  json.name profile.name
  json.image profile.image.url
  json.reservation profile.reservation
  json.reviews profile.reviews
  json.imagecount profile.image_count
  json.pointsearned profile.points_earned
end
