class Customer < ActiveRecord::Base
has_many :addresses
has_many :orders
end
