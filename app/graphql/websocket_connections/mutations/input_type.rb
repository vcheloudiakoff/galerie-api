WebsocketConnections::Mutations::InputType = GraphQL::InputObjectType.define do
  name 'WebsocketConnectionInputType'
  description 'Properties for updating a WebsocketConnection'
  argument :subscribed_query_ids, types[types.String]

  argument :user_id, types.String
  argument :connection_identifier, types.String

end
