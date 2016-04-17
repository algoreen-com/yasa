class CreateDeliveryServicePrices < ActiveRecord::Migration
  def change
    create_table :delivery_service_prices do |t|
	t.integer :delivery_service_id
	t.string  :code
	t.decimal :price, precision: 8, scale: 2
	t.decimal :cost_price, precision: 8, scale: 2
	t.integer :tax_rate_id
	t.decimal :min_weight, precision: 8, scale: 2
	t.decimal :max_weight, precision: 8, scale: 2


        t.timestamps null: false
    end
  end
end
