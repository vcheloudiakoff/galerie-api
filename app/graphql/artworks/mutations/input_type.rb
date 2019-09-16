Artworks::Mutations::InputType = GraphQL::InputObjectType.define do
  name 'ArtworkInputType'
  description 'Properties for updating a Artwork'
  argument :exhibition_ids, types[types.String]

  argument :image_url, types.String
  argument :title, types.String
  argument :description, types.String
  argument :techniques, types.String
  argument :support, types.String
  argument :height, types.Float
  argument :width, types.Float
  argument :artist_id, types.String

end
