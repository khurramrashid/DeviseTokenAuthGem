json.user do
  json.id @resource.id
  json.email @resource.email
  json.phone_number @resource.phno
  json.first_name @resource.first_name
  json.last_name @resource.last_name
end
