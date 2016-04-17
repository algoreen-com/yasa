json.array!(@delivery_services) do |delivery_service|
  json.extract! delivery_service, :id
  json.url delivery_service_url(delivery_service, format: :json)
end
