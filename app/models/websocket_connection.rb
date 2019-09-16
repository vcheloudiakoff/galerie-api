class WebsocketConnection < ApplicationRecord

  has_many :subscribed_queries
  belongs_to :user
end
