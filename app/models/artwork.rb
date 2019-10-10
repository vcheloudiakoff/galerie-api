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

  after_save :set_as_preview_artwork

  def set_as_preview_artwork
    self.artist&.update(preview_artwork_id: self.id) if self.artist&.preview_artwork_id.blank?
  end
end
