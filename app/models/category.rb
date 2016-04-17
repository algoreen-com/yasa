class Category < ActiveRecord::Base

has_many :products, through: :products_categories
end
