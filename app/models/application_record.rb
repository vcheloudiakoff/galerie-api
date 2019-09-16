class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.visible_for(*)
    all
  end

  def self.writable_by(*)
    all
  end

  def self.broadcast_queries
    WebsocketConnection.all.each do |wsc|
      wsc.subscribed_queries.each do |sq|
        result = GalerieApiSchema.execute(sq.query, context: { current_user: wsc.user })
        hex = Digest::SHA1.hexdigest(result.to_s)
        next if sq.result_hash == hex

        sq.update_attributes(result_hash: hex)
        SubscriptionsChannel.broadcast_to(wsc, query: sq.query, result: result.to_s)
      end
    end
  end

end
