class RemoveTimeUpdateFromProductsSubcatalogs < ActiveRecord::Migration
  def up
    remove_column :products_subcatalogs, :updated_at
  end

  def down
    add_column :products_subcatalogs, :updated_at, :gatetime
  end
end
