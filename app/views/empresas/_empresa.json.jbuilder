json.extract! empresa, :id, :nombre, :direccion, :telefono, :password, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)