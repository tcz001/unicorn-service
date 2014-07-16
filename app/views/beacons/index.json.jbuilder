json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :UUID, :major, :minor, :location
  json.url beacon_url(beacon, format: :json)
end
