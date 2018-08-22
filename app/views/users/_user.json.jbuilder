json.extract! user, :id, :username, :password, :password_confirmation, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
