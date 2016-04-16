class CreateDeliveryServicePrices < ActiveRecord::Migration
  def change
    create_table :delivery_service_prices do |t|

      t.timestamps null: false
    end
  end
end
