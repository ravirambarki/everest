json.array!(@users) do |user|
  json.extract! user, :id, :dealership_code, :dealership_name, :contact_person, :address, :city, :contact, :weekly_submission
  json.url user_url(user, format: :json)
end
