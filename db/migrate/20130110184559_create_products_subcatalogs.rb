class CreateProductsSubcatalogs < ActiveRecord::Migration
  def change
    create_table :products_subcatalogs do |t|
      t.integer :product_id
      t.integer :subcatalog_id

      t.timestamps
    end
  end
end
