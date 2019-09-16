WebsocketConnections::Mutations::Update = GraphQL::Field.define do
  description 'Updates a WebsocketConnection'
  type WebsocketConnections::Type

  argument :id, types.String
  argument :websocket_connection, !WebsocketConnections::Mutations::InputType

  resolve ApplicationService.call(:websocket_connection, :update)
end
