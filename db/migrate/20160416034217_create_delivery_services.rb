class CreateDeliveryServices < ActiveRecord::Migration
  def change
    create_table :delivery_services do |t|

      t.timestamps null: false
    end
  end
end
