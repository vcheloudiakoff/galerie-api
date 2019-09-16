class Artist < ApplicationRecord

  has_many :exhibitions
  has_many :artworks
end
