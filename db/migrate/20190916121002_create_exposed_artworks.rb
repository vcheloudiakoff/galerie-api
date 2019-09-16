class CreateExposedArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :exposed_artworks, id: :uuid do |t|
      t.uuid :exhibition_id
      t.uuid :artwork_id

      t.timestamps
    end
  end
end
