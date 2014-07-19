class AddPositionToSubcatalogs < ActiveRecord::Migration
  def change
    add_column :subcatalogs, :position, :integer
  end
end
