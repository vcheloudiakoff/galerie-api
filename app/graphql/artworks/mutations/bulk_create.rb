Artworks::Mutations::BulkCreate = GraphQL::Field.define do
  description 'creates some Artworks'
  type types[Artworks::Type]

  argument :artwork, !types[Artworks::Mutations::InputType]

  resolve ApplicationService.call(:artwork, :bulk_create)
end
