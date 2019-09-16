SubscribedQueries::Mutations::InputType = GraphQL::InputObjectType.define do
  name 'SubscribedQueryInputType'
  description 'Properties for updating a SubscribedQuery'

  argument :websocket_connection_id, types.String
  argument :result_hash, types.String
  argument :query, types.String

end
