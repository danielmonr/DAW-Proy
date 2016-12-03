json.extract! cliente, :id, :nombre, :email, :apellido, :password, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)