class CreateSubscribedQuery < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribed_queries, id: :uuid do |t|
      t.uuid :websocket_connection_id
      t.string :result_hash
      t.string :query
      t.timestamps
    end
  end
end
