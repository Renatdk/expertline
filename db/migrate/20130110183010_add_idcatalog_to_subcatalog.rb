class AddIdcatalogToSubcatalog < ActiveRecord::Migration
  def change
    add_column :subcatalogs, :catalog_id, :integer
  end
end
