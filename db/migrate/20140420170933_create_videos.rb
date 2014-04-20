class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :genre

      t.timestamps
    end
  end
end
