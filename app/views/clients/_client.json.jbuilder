json.extract! client, :id, :name, :account, :password, :email, :message, :created_at, :updated_at
json.url client_url(client, format: :json)
