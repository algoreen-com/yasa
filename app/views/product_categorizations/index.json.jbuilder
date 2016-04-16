json.array!(@product_categorizations) do |product_categorization|
  json.extract! product_categorization, :id
  json.url product_categorization_url(product_categorization, format: :json)
end
