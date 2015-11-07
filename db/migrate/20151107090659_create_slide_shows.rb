class CreateSlideShows < ActiveRecord::Migration
  def change
    create_table :slide_shows do |t|
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
