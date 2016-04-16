class CreateTaxRates < ActiveRecord::Migration
  def change
    create_table :tax_rates do |t|

      t.timestamps null: false
    end
  end
end
