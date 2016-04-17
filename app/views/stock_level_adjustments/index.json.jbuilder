json.array!(@stock_level_adjustments) do |stock_level_adjustment|
  json.extract! stock_level_adjustment, :id
  json.url stock_level_adjustment_url(stock_level_adjustment, format: :json)
end
