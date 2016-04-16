class CreateTaxRates < ActiveRecord::Migration
  def change
    create_table :tax_rates do |t|
	t.string  :name
	t.decimal :rate, precision: 8, scale: 2
	t.text    :country_ids
        t.text    :country

        t.timestamps null: false
    end
  end
end
