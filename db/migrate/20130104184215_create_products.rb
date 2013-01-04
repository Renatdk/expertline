class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :content
      t.string :title_image
      t.string :main_image

      t.timestamps
    end
  end
end
