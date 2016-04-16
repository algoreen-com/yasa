class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
	t.integer :customer_id
	t.string  :address_type
	t.boolean :default
	t.string  :address1
	t.string  :address2
	t.string  :address3
	t.string  :address4
        t.string  :suburb
        t.string  :city
	t.string  :postcode
        t.string  :country
	t.integer :country_id

        t.timestamps null: false
    end
  end
end
