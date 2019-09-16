SubscribedQueries::Mutations::BulkUpdate = GraphQL::Field.define do
  description 'Updates some SubscribedQueries'
  type types[SubscribedQueries::Type]

  argument :subscribed_query, !types[SubscribedQueries::Mutations::InputType]

  resolve ApplicationService.call(:subscribed_query, :bulk_update)
end
