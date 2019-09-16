SubscribedQueries::Mutations::Destroy = GraphQL::Field.define do
  description 'Destroys a SubscribedQuery'
  type SubscribedQueries::Type

  argument :id, !types.String

  resolve ApplicationService.call(:subscribed_query, :destroy)
end
