json.array!(@states) do |state|
  json.extract! state, :id, :description, :active, :region_id
  json.url state_url(state, format: :json)
end
