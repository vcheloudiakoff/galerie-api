# == Schema Information
#
# Table name: artists
#
#  id                 :uuid             not null, primary key
#  description        :string
#  first_name         :string
#  last_name          :string
#  nickname           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  preview_artwork_id :string
#

class Artist < ApplicationRecord

  has_many :exhibitions
  has_many :artworks

  has_one :preview_artwork, class_name: 'Artwork', primary_key: 'preview_artwork_id'
end 
