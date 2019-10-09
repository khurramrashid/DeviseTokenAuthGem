json.profile @profiles do |profile|
  json.user_id profile.user_id
  json.name profile.name
  json.phno profile.phno
  json.homeaddress profile.homeaddress
  json.city profile.city
  json.country profile.country
  json.name profile.name
  json.image profile.image.url
  json.reservation profile.reservation
  json.reviews profile.reviews
  json.imagecount profile.imagecount
  json.pointsearned profile.pointsearned
end
