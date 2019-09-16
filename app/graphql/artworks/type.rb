Artworks::Type = GraphQL::ObjectType.define do
  name 'Artwork'
  field :id, !types.String
  field :exhibition_ids, types[types.String] do
    resolve CollectionIdsResolver
  end
  field :exhibitions, types[Exhibitions::Type]
  field :created_at, types.String
  field :updated_at, types.String
  field :image_url, types.String
  field :title, types.String
  field :description, types.String
  field :techniques, types.String
  field :support, types.String
  field :height, types.Float
  field :width, types.Float
  field :artist_id, types.String
  field :artist, Artists::Type
end
