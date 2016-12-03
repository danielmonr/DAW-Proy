json.extract! operacion, :id, :id_cuentasalida, :id_cuentarecibe, :cantidad, :fecha, :created_at, :updated_at
json.url operacion_url(operacion, format: :json)