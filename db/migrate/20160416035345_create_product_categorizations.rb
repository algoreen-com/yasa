class CreateProductCategorizations < ActiveRecord::Migration
  def change
    create_table :product_categorizations do |t|

      t.timestamps null: false
    end
  end
end
