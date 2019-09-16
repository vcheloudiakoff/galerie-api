WebsocketConnections::Mutations::Destroy = GraphQL::Field.define do
  description 'Destroys a WebsocketConnection'
  type WebsocketConnections::Type

  argument :id, !types.String

  resolve ApplicationService.call(:websocket_connection, :destroy)
end
