module ApplicationCable
  class Connection < ActionCable::Connection::Base

    identified_by :websocket_connection

    def connect
      # Check authentication, and define current user
      self.websocket_connection = WebsocketConnection.create(
        # user_id: current_user.id
      )
    end

  end
end
