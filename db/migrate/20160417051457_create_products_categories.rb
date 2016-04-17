class CreateProductsCategories < ActiveRecord::Migration
  def change
    create_table :products_categories do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps null: false    
 
    end
  end
end
