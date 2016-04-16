class CreateStockLevelAdjustments < ActiveRecord::Migration
  def change
    create_table :stock_level_adjustments do |t|

      t.timestamps null: false
    end
  end
end
