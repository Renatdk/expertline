class AddTitleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title, :boolean
  end
end
