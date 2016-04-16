class TaxRate < ActiveRecord::Base
has_many :delivery_service_prices
has_many :products
end
