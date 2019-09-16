# == Schema Information
#
# Table name: artworks
#
#  id          :uuid             not null, primary key
#  description :string
#  height      :float
#  image_url   :string
#  support     :string
#  techniques  :string
#  title       :string
#  width       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  artist_id   :uuid
#

class Artwork < ApplicationRecord

  has_many :exposed_artworks
  has_many :exhibitions, through: :exposed_artworks
  belongs_to :artist
end
