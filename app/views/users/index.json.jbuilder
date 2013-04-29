json.array!(@users) do |user|
  json.extract! user, :email, :fname, :lname, :salary
  json.url user_url(user, format: :json)
end