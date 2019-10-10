# frozen_string_literal: true

Artist.destroy_all
Artwork.destroy_all

artist = Artist.create(
  nickname: 'SAYPE',
  description: 'PKPOFJVEFOBIJTZVD CIXFHSDJOFG JSDOCJIVDNP OVFJC DFOGJV QSPOGDOPSKJVB OSOCJDSH VPSDOJF SDPOCJV PVXJ QSCPOJC SPXOCKQS^C KPSDBOCKV PQSDOKSJDOFKFJS DOFIJSDPOFSD PFOK SDPOFK SDPOFKPSOK',
  first_name: '',
  last_name: ''
)
artist.artworks.create(
  image_url: 'http://www.speerstra.net/system/images/W1siZiIsIjIwMTgvMDkvMjUvMTBfNTJfMDVfMzc2X3NheXBlX2dlbmV2ZS5qcGciXSxbInAiLCJ0aHVtYiIsIjkwMHg4MDA%2BIl0sWyJwIiwic3RyaXAiXV0/saype%20geneve.jpg'
)

artist = Artist.create(
  nickname: 'VINC',
  description: 'PKPOFJVEFOBIJTZVD CIXFHSDJOFG JSDOCJIVDNP OVFJC DFOGJV QSPOGDOPSKJVB OSOCJDSH VPSDOJF SDPOCJV PVXJ QSCPOJC SPXOCKQS^C KPSDBOCKV PQSDOKSJDOFKFJS DOFIJSDPOFSD PFOK SDPOFK SDPOFKPSOK',
  first_name: '',
  last_name: ''
)

ar = artist.artworks.create(
  image_url: 'https://mediasv6.truffaut.com/Articles/jpg/0019000/19324_001_350.jpg'
)

artist.update_attribute(:preview_artwork_id, ar.id)
