json.array!(@additionals) do |additional|
  json.extract! additional, :id, :sypply_id, :description, :active
  json.url additional_url(additional, format: :json)
end
