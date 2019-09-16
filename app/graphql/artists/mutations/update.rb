Artists::Mutations::Update = GraphQL::Field.define do
  description 'Updates a Artist'
  type Artists::Type

  argument :id, types.String
  argument :artist, !Artists::Mutations::InputType

  resolve ApplicationService.call(:artist, :update)
end
