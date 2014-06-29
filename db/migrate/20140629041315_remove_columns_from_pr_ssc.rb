class RemoveColumnsFromPrSsc < ActiveRecord::Migration
  def up
  	remove_column :products_subsubcatalogs, :created_at
  	remove_column :products_subsubcatalogs, :updated_at
  end

  def down
  	add_column :products_subsubcatalogs, :created_at, :datetime
  	add_column :products_subsubcatalogs, :updated_at, :datetime
  end
end
