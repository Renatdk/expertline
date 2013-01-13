class CreateSubcatalogs < ActiveRecord::Migration
  def change
    create_table :subcatalogs do |t|
      t.string :name

      t.timestamps
    end
  end
end
