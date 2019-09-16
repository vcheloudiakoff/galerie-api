class Exhibition < ApplicationRecord

  belongs_to :artist
  has_many :exposed_artworks
  has_many :artworks, through: :exposed_artworks
end
