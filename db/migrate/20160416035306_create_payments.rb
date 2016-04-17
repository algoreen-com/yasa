class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
	t.integer :order_id
	t.decimal :amount, precision: 8, scale: 2, default: 0.0
	t.string  :reference
	t.string  :method
	t.boolean :confirmed, default: true
	t.boolean :refundable, default: false
	t.decimal :amount_refunded, precision: 8, scale: 2, default: 0.0
	t.integer :parent_payment_id
	t.boolean :exported, default: false

        t.timestamps null: false
    end
  end
end
