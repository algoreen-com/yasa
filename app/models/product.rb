class Product < ActiveRecord::Base
has_many :order_items
has_one :product_attribute
belongs_to :tax_rate
has_many :categories, through: :products_categories
has_attached_file :image
do_not_validate_attachment_file_type :image

end
