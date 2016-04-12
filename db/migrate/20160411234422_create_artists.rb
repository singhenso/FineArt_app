class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :genre
      t.string :location
      t.string :medium

      t.timestamps null: false
    end
  end
end
