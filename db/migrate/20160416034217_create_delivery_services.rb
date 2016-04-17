class CreateDeliveryServices < ActiveRecord::Migration
  def change
    create_table :delivery_services do |t|
	t.string  :name
	t.string  :code
	t.boolean :default, default: false
	t.boolean :active, default: true
	t.string  :courier
	t.string  :tracking_url

        t.timestamps null: false
    end
  end
end
