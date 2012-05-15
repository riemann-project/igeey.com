module Followingable
  def self.included(base)
    base.class_eval do

      def user_followings
        self.followings.where(:followable_type => 'User')
      end

      def venue_followings
        self.followings.where(:followable_type => 'Venue')
      end

      def tag_followings
        self.followings.where(:followable_type => 'Tag')
      end

      def task_followings
        self.followings.where(:followable_type => 'Task')
      end

    end
  end
end
