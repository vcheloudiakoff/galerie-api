Artists::Mutations::InputType = GraphQL::InputObjectType.define do
  name 'ArtistInputType'
  description 'Properties for updating a Artist'
  argument :exhibition_ids, !types[!types.String]
  argument :artwork_ids, !types[!types.String]

  argument :first_name, !types.String
  argument :last_name, !types.String
  argument :nickname, !types.String
  argument :description, !types.String
  argument :preview_artwork_id, types.String

end
