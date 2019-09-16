Artworks::Mutations::Destroy = GraphQL::Field.define do
  description 'Destroys a Artwork'
  type Artworks::Type

  argument :id, !types.String

  resolve ApplicationService.call(:artwork, :destroy)
end
