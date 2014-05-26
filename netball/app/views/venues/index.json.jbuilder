json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :city, :country
  json.url venue_url(venue, format: :json)
end
