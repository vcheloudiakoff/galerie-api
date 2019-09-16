Artworks::Mutations::BulkUpdate = GraphQL::Field.define do
  description 'Updates some Artworks'
  type types[Artworks::Type]

  argument :artwork, !types[Artworks::Mutations::InputType]

  resolve ApplicationService.call(:artwork, :bulk_update)
end
