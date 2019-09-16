Artists::Mutations::BulkUpdate = GraphQL::Field.define do
  description 'Updates some Artists'
  type types[Artists::Type]

  argument :artist, !types[Artists::Mutations::InputType]

  resolve ApplicationService.call(:artist, :bulk_update)
end
