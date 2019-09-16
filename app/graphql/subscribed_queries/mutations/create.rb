SubscribedQueries::Mutations::Create = GraphQL::Field.define do
  description 'Creates a SubscribedQuery'
  type SubscribedQueries::Type

  argument :subscribed_query, !SubscribedQueries::Mutations::InputType

  resolve ApplicationService.call(:subscribed_query, :create)
end
