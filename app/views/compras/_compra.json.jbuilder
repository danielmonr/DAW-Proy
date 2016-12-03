json.extract! compra, :id, :id_cliente, :cantidad, :tarjeta, :tipo, :created_at, :updated_at
json.url compra_url(compra, format: :json)