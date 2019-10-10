# frozen_string_literal: true

Artist.destroy_all
Artwork.destroy_all

artist = Artist.create(
  nickname: 'Jambon',
  description: 'jambonette',
  first_name: '',
  last_name: ''
)
artist.artworks.create(
  image_url: 'https://mediasv6.truffaut.com/Articles/jpg/0019000/19324_001_350.jpg'
)

artist = Artist.create(
  nickname: 'JambonWithPreview',
  description: 'jambonette',
  first_name: '',
  last_name: ''
)

ar = artist.artworks.create(
  image_url: 'https://mediasv6.truffaut.com/Articles/jpg/0019000/19324_001_350.jpg'
)

artist.update_attribute(:preview_artwork_id, ar.id)
