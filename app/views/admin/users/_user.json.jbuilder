json.extract! user, :id, :full_name, :email, :password_digest, :social, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
