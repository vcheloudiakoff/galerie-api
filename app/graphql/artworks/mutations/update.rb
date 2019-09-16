Artworks::Mutations::Update = GraphQL::Field.define do
  description 'Updates a Artwork'
  type Artworks::Type

  argument :id, types.String
  argument :artwork, !Artworks::Mutations::InputType

  resolve ApplicationService.call(:artwork, :update)
end
