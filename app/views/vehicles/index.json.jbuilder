json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :descripcion, :brand_id, :vehicle_type_id, :user_id, :active
  json.url vehicle_url(vehicle, format: :json)
end
