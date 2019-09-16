class SubscriptionsChannel < ApplicationCable::Channel

  def subscribed
    stream_for(websocket_connection)
    websocket_connection.update_attributes(connection_identifier: connection.connection_identifier)
    ci = ActionCable.server.connections.map(&:connection_identifier)
    WebsocketConnection.all.each do |wsc|
      wsc.destroy unless ci.include?(wsc.connection_identifier)
    end
  end

  def subscribe_to_query(data)
    websocket_connection.subscribed_queries.find_or_create_by(query: data['query'])
    SubscriptionsChannel.broadcast_to(
      websocket_connection,
      query: data['query'],
      result: GalerieApiSchema.execute(data['query'], context: { current_user: websocket_connection.user })
    )
  end

  def unsubscribe_to_query(data)
    websocket_connection.subscribed_queries.find_by(query: data['query'])&.destroy
  end

  def unsubscribed
    websocket_connection.destroy
    ci = ActionCable.server.connections.map(&:connection_identifier)
    WebsocketConnection.all.each do |wsc|
      wsc.destroy unless ci.include?(wsc.connection_identifier)
    end
  end

end

