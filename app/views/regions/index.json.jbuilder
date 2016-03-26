json.array!(@regions) do |region|
  json.extract! region, :id, :description, :active
  json.url region_url(region, format: :json)
end
