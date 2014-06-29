class CreateProductsSubsubcatalogs < ActiveRecord::Migration
  def change
    create_table :products_subsubcatalogs do |t|
      t.integer :product_id
      t.integer :subsubcatalog_id

      t.timestamps
    end
  end
end
