WebsocketConnections::Type = GraphQL::ObjectType.define do
  name 'WebsocketConnection'
  field :id, !types.String
  field :subscribed_query_ids, types[types.String] do
    resolve CollectionIdsResolver
  end
  field :subscribed_queries, types[SubscribedQueries::Type]
  field :created_at, types.String
  field :updated_at, types.String
  field :user_id, types.String
  field :user, Users::Type
  field :connection_identifier, types.String
end
