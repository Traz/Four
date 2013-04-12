json.array!(@users) do |user|
  json.extract! user, :username, :lastname, :identity, :email, :birthdate, :active
  json.url user_url(user, format: :json)
end