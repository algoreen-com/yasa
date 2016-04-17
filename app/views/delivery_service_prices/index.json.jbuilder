json.array!(@delivery_service_prices) do |delivery_service_price|
  json.extract! delivery_service_price, :id
  json.url delivery_service_price_url(delivery_service_price, format: :json)
end
