SubscribedQueries::Mutations::BulkCreate = GraphQL::Field.define do
  description 'creates some SubscribedQueries'
  type types[SubscribedQueries::Type]

  argument :subscribed_query, !types[SubscribedQueries::Mutations::InputType]

  resolve ApplicationService.call(:subscribed_query, :bulk_create)
end
