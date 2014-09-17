json.array!(@heralds) do |herald|
  json.extract! herald, :id, :message
  json.url herald_url(herald, format: :json)
end
