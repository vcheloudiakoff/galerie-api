SubscribedQueries::Mutations::Update = GraphQL::Field.define do
  description 'Updates a SubscribedQuery'
  type SubscribedQueries::Type

  argument :id, types.String
  argument :subscribed_query, !SubscribedQueries::Mutations::InputType

  resolve ApplicationService.call(:subscribed_query, :update)
end
