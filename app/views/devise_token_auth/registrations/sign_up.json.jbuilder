json.user do
  json.id @resource.id
  json.email @resource.email
  json.phno @resource.phno
  json.firstname @resource.first_name
  json.lastname @resource.last_name
end
