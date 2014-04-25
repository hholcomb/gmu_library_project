json.array!(@users) do |user|
  json.extract! user, :id, :name, :user_id, :password, :admin
  json.url user_url(user, format: :json)
end
