json.array!(@supplies) do |supply|
  json.extract! supply, :id, :number_space, :hourly_rate, :daily_rate, :weekly_rate, :monthly_rate, :region_id, :state_id, :zone_id, :address, :active
  json.url supply_url(supply, format: :json)
end
