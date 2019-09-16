# == Schema Information
#
# Table name: websocket_connections
#
#  id                    :uuid             not null, primary key
#  connection_identifier :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :uuid
#

class WebsocketConnection < ApplicationRecord

  has_many :subscribed_queries
  belongs_to :user
end
