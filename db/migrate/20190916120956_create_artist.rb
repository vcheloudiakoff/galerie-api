class CreateArtist < ActiveRecord::Migration[5.2]
  def change
    create_table :artists, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :description
      t.string :preview_artwork_id
      t.timestamps
    end
  end
end
