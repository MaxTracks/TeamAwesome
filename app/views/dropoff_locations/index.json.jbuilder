json.array!(@dropoff_locations) do |dropoff_location|
  json.extract! dropoff_location, :id, :location, :latitude, :longitude, :details, :items
  json.url dropoff_location_url(dropoff_location, format: :json)
end
