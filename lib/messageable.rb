module Messageable
  def self.included(base)
    base.class_eval do
      def inbox
        Message.where(:to_user_id => self.id).order("created_at desc")
      end

      def outbox
        Message.where(:from_user_id => self.id).order("created_at desc")
      end

      def unreadbox
        Message.where(:to_user_id => self.id, :unread => true).order("created_at desc")
      end
    end
  end
end
