class RemoveTimestampsFromProductsSubcatalogs < ActiveRecord::Migration
  def up
    remove_column :products_subcatalogs, :created_at
  end

  def down
    add_column :products_subcatalogs, :created_at, :gatetime
  end
end
