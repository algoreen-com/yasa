class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
	t.string  :name
	t.string  :permalink
	t.text    :description
	t.integer :parent_id
	t.integer :lft
	t.integer :rgt
	t.integer :depth
	t.string  :ancestral_permalink
	t.boolean :permalink_includes_ancestors, default: false

        t.timestamps null: false
    end
  end
end
