class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
	t.integer :order_id
        t.integer :product_id
	t.string  :ordered_item_type
	t.integer :quantity, default: 1
	t.decimal :unit_price, precision: 8, scale: 2
	t.decimal :unit_cost_price, precision: 8, scale: 2
	t.decimal :tax_amount, precision: 8, scale: 2
	t.decimal :tax_rate, precision: 8, scale: 2
	t.decimal :weight, precision: 8, scale: 3
        t.decimal :width, precision: 6, scale: 2  
        t.decimal :length, precision: 6, scale: 2
        t.decimal :height, precision: 6, scale: 2
        t.decimal :gst, precision: 8, scale: 3, default: 0.15

        t.timestamps null: false
    end
  end
end
