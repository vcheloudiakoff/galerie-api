SubscribedQueries::Type = GraphQL::ObjectType.define do
  name 'SubscribedQuery'
  field :id, !types.String
  field :created_at, types.String
  field :updated_at, types.String
  field :websocket_connection_id, types.String
  field :websocket_connection, WebsocketConnections::Type
  field :result_hash, types.String
  field :query, types.String
end
