# == Schema Information
#
# Table name: subscribed_queries
#
#  id                      :uuid             not null, primary key
#  query                   :string
#  result_hash             :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  websocket_connection_id :uuid
#

class SubscribedQuery < ApplicationRecord

  belongs_to :websocket_connection
end
