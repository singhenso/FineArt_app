class AddGalleryToArtist < ActiveRecord::Migration
  def change
    add_column(:artists, :gallery_id, :integer)
  end
end

