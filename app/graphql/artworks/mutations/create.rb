Artworks::Mutations::Create = GraphQL::Field.define do
  description 'Creates a Artwork'
  type Artworks::Type

  argument :artwork, !Artworks::Mutations::InputType

  resolve ApplicationService.call(:artwork, :create)
end
