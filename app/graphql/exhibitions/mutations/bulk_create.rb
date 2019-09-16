Exhibitions::Mutations::BulkCreate = GraphQL::Field.define do
  description 'creates some Exhibitions'
  type types[Exhibitions::Type]

  argument :exhibition, !types[Exhibitions::Mutations::InputType]

  resolve ApplicationService.call(:exhibition, :bulk_create)
end
