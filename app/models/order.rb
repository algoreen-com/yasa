class Order < ActiveRecord::Base
has_many :order_items
belongs_to :country
belongs_to :customer
belongs_to :delivery_service
has_many :payments
end
