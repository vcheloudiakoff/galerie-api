WebsocketConnections::Mutations::BulkCreate = GraphQL::Field.define do
  description 'creates some WebsocketConnections'
  type types[WebsocketConnections::Type]

  argument :websocket_connection, !types[WebsocketConnections::Mutations::InputType]

  resolve ApplicationService.call(:websocket_connection, :bulk_create)
end
