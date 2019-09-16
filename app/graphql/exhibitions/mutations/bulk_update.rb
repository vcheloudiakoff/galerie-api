Exhibitions::Mutations::BulkUpdate = GraphQL::Field.define do
  description 'Updates some Exhibitions'
  type types[Exhibitions::Type]

  argument :exhibition, !types[Exhibitions::Mutations::InputType]

  resolve ApplicationService.call(:exhibition, :bulk_update)
end
