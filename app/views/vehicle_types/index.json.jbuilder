json.array!(@vehicle_types) do |vehicle_type|
  json.extract! vehicle_type, :id, :description, :active
  json.url vehicle_type_url(vehicle_type, format: :json)
end
