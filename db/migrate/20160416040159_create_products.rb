class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
	t.integer :parent_id
	t.string  :name
	t.string  :sku
	t.string  :permalink
	t.text    :description
	t.text    :short_description
	t.boolean :active, default: true
	t.decimal :weight, precision: 8, scale: 3, default: 0.0
        t.decimal :width, precision: 6, scale: 2, default: 0.0
        t.decimal :langth, precision: 6, scale: 2, default: 0.0
        t.decimal :height, precision: 6, scale: 2, default: 0.0
	t.decimal :price, precision: 8, scale: 2, default: 0.0
	t.decimal :cost_price, precision: 8, scale: 2, default: 0.0
	t.integer :tax_rate_id
	t.boolean :featured, default: false
	t.text    :in_the_box
	t.boolean :stock_control, default: true
	t.boolean :default, default: false

        t.timestamps null: false
    end
  end
end
