class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
	t.string  :name
	t.string  :code
	t.string  :continent
	t.string  :currency
	t.boolean :eu, default: false

        t.timestamps null: false
    end
  end
end
