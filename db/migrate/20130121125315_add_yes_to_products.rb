class AddYesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :yes, :boolean
  end
end
