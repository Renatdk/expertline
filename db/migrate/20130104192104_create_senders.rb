class CreateSenders < ActiveRecord::Migration
  def change
    create_table :senders do |t|
      t.string :email
      t.string :address
      t.string :tel
      t.string :commet
      t.integer :product_id
      t.string :sicret
      t.integer :basket_id
      t.integer :buy

      t.timestamps
    end
  end
end
