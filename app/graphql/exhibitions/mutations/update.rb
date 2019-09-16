Exhibitions::Mutations::Update = GraphQL::Field.define do
  description 'Updates a Exhibition'
  type Exhibitions::Type

  argument :id, types.String
  argument :exhibition, !Exhibitions::Mutations::InputType

  resolve ApplicationService.call(:exhibition, :update)
end
