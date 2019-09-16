# == Schema Information
#
# Table name: exposed_artworks
#
#  id            :uuid             not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  artwork_id    :uuid
#  exhibition_id :uuid
#

class ExposedArtwork < ApplicationRecord

  belongs_to :artwork
  belongs_to :exhibition
end
