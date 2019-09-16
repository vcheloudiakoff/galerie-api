class CreateArtwork < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks, id: :uuid do |t|
      t.string :image_url
      t.string :title
      t.string :description
      t.string :techniques
      t.string :support
      t.float :height
      t.float :width
      t.uuid :artist_id
      t.timestamps
    end
  end
end
