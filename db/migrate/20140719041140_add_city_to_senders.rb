class AddCityToSenders < ActiveRecord::Migration
  def change
    add_column :senders, :city, :string
  end
end
