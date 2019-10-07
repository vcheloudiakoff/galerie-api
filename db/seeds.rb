# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist = Artist.create({ nickname: "Jambon", description: "jambonette", first_name: "", last_name: "" })

artist.artworks.create({ image_url: "https://mediasv6.truffaut.com/Articles/jpg/0019000/19324_001_350.jpg" })