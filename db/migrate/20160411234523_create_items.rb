class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :genre
      t.string :medium
      t.string :location
      t.string :artist_id

      t.timestamps null: false
    end
  end
end
