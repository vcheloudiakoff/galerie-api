class Artwork < ApplicationRecord

  has_many :exposed_artworks
  has_many :exhibitions, through: :exposed_artworks
  belongs_to :artist
end
