json.array!(@users) do |user|
  json.extract! user, :name, :E-mail
  json.url user_url(user, format: :json)
end