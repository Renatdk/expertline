class AddSortNumToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs, :sortnum, :integer
  end
end
