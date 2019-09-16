Exhibitions::Mutations::Destroy = GraphQL::Field.define do
  description 'Destroys a Exhibition'
  type Exhibitions::Type

  argument :id, !types.String

  resolve ApplicationService.call(:exhibition, :destroy)
end
