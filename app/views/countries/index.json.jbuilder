json.array!(@countries) do |country|
  json.extract! country, :id
  json.url country_url(country, format: :json)
end
