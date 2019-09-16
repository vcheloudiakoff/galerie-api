class CreateWebsocketConnection < ActiveRecord::Migration[5.2]
  def change
    create_table :websocket_connections, id: :uuid do |t|
      t.uuid :user_id
      t.string :connection_identifier
      t.timestamps
    end
  end
end
