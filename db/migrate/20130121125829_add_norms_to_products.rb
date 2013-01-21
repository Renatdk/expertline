class AddNormsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :norm, :string
  end
end
