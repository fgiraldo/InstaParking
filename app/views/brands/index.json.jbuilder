json.array!(@brands) do |brand|
  json.extract! brand, :id, :description, :active
  json.url brand_url(brand, format: :json)
end
