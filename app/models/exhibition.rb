# == Schema Information
#
# Table name: exhibitions
#
#  id             :uuid             not null, primary key
#  beginning_date :date
#  description    :string
#  ending_date    :date
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  artist_id      :uuid
#

class Exhibition < ApplicationRecord

  belongs_to :artist
  has_many :exposed_artworks
  has_many :artworks, through: :exposed_artworks
end
