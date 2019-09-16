# rails generate graphql_resource resource_name field1:string field2:float belongs_to:other_resource_name has_many:other_resources_name many_to_many:other_resources_name

rails generate graphql_resource artist first_name:string last_name:string nickname:string description:string preview_artwork_id:string

rails generate graphql_resource artwork image_url:string title:string description:string techniques:string support:string height:float width:float belongs_to:artist

rails generate graphql_resource exhibition title:string description:string beginning_date:date ending_date:date belongs_to:artist many_to_many:artworks