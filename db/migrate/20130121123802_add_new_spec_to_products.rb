class AddNewSpecToProducts < ActiveRecord::Migration
  def change
    add_column :products, :new, :boolean
    add_column :products, :spec, :boolean
  end
end
