Artists::Mutations::BulkCreate = GraphQL::Field.define do
  description 'creates some Artists'
  type types[Artists::Type]

  argument :artist, !types[Artists::Mutations::InputType]

  resolve ApplicationService.call(:artist, :bulk_create)
end
