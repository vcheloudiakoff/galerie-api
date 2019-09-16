class User < ApplicationRecord

  has_many :websocket_connections
end
