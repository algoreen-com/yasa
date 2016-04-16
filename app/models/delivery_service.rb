class DeliveryService < ActiveRecord::Base
has_many :delivery_service_prices
has_many :orders
end
