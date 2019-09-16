Artists::Mutations::Create = GraphQL::Field.define do
  description 'Creates a Artist'
  type Artists::Type

  argument :artist, !Artists::Mutations::InputType

  resolve ApplicationService.call(:artist, :create)
end
