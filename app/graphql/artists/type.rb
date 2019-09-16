Artists::Type = GraphQL::ObjectType.define do
  name 'Artist'
  field :id, !types.String
  field :exhibition_ids, types[types.String] do
    resolve CollectionIdsResolver
  end
  field :exhibitions, types[Exhibitions::Type]
  field :artwork_ids, types[types.String] do
    resolve CollectionIdsResolver
  end
  field :artworks, types[Artworks::Type]
  field :created_at, types.String
  field :updated_at, types.String
  field :first_name, types.String
  field :last_name, types.String
  field :nickname, types.String
  field :description, types.String
  field :preview_artwork_id, types.String
end
