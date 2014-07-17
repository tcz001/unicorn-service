json.array!(@engagements) do |engagement|
  json.extract! engagement, :id, :beacon_id, :unicorn_id
  json.url engagement_url(engagement, format: :json)
end
