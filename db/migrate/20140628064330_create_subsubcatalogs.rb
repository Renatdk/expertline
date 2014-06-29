class CreateSubsubcatalogs < ActiveRecord::Migration
  def change
    create_table :subsubcatalogs do |t|
      t.string :name
      t.integer :subcatalog_id

      t.timestamps
    end
  end
end
