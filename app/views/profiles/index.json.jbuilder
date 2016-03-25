json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :identity_number, :born_at, :phone_number, :landline_number, :contact, :company_name, :address
  json.url profile_url(profile, format: :json)
end
