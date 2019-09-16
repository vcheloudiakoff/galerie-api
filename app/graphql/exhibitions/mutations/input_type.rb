Exhibitions::Mutations::InputType = GraphQL::InputObjectType.define do
  name 'ExhibitionInputType'
  description 'Properties for updating a Exhibition'
  argument :artwork_ids, types[types.String]

  argument :title, types.String
  argument :description, types.String
  argument :beginning_date, types.String
  argument :ending_date, types.String
  argument :artist_id, types.String

end
