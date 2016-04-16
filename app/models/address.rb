class Address < ActiveRecord::Base
belongs_to :customer
belongs_to :country
end
