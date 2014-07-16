json.array!(@unicorns) do |unicorn|
  json.extract! unicorn, :id, :name
  json.url unicorn_url(unicorn, format: :json)
end
