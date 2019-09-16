Exhibitions::Mutations::Create = GraphQL::Field.define do
  description 'Creates a Exhibition'
  type Exhibitions::Type

  argument :exhibition, !Exhibitions::Mutations::InputType

  resolve ApplicationService.call(:exhibition, :create)
end
