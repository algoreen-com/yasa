class DeliveryServicePrice < ActiveRecord::Base
belongs_to :tax_rate
belongs_to :delivery_service
end
