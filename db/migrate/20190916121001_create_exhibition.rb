class CreateExhibition < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibitions, id: :uuid do |t|
      t.string :title
      t.string :description
      t.date :beginning_date
      t.date :ending_date
      t.uuid :artist_id
      t.timestamps
    end
  end
end
