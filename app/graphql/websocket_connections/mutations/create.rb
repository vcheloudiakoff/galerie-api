WebsocketConnections::Mutations::Create = GraphQL::Field.define do
  description 'Creates a WebsocketConnection'
  type WebsocketConnections::Type

  argument :websocket_connection, !WebsocketConnections::Mutations::InputType

  resolve ApplicationService.call(:websocket_connection, :create)
end
