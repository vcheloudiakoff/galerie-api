WebsocketConnections::Mutations::BulkUpdate = GraphQL::Field.define do
  description 'Updates some WebsocketConnections'
  type types[WebsocketConnections::Type]

  argument :websocket_connection, !types[WebsocketConnections::Mutations::InputType]

  resolve ApplicationService.call(:websocket_connection, :bulk_update)
end
