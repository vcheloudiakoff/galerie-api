Exhibitions::Type = GraphQL::ObjectType.define do
  name 'Exhibition'
  field :id, !types.String
  field :artwork_ids, types[types.String] do
    resolve CollectionIdsResolver
  end
  field :artworks, types[Artworks::Type]
  field :created_at, types.String
  field :updated_at, types.String
  field :title, types.String
  field :description, types.String
  field :beginning_date, types.String
  field :ending_date, types.String
  field :artist_id, types.String
  field :artist, Artists::Type
end
