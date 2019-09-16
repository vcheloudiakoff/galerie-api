Artists::Mutations::Destroy = GraphQL::Field.define do
  description 'Destroys a Artist'
  type Artists::Type

  argument :id, !types.String

  resolve ApplicationService.call(:artist, :destroy)
end
