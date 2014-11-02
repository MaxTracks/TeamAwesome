json.array!(@pickup_locations) do |pickup_location|
  json.extract! pickup_location, :id, :location, :latitude, :longitude, :details, :items
  json.url pickup_location_url(pickup_location, format: :json)
end
