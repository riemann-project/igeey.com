module UserCountable
  def self.included(base)
    base.class_eval do
      def venues_count
        self.venues.size
      end

      def syncs_count
        self.syncs.size
      end  

      def followings_count
        self.followings.size
      end  

      def influence_count
        [self.tasks.map{|c| c.plans.where(:parent_id => nil)},self.plans.map{|p| p.children}].flatten.uniq.size
      end

      def douban_count
        self.douban? ? 1 : 0
      end

      def sina_count
        self.sina? ? 1 : 0
      end

      def realtime_plans_count
        self.plans.count
      end

      def realtime_tasks_count
        self.tasks.count
      end

      def questions_count
        self.questions.count
      end

      def answers_count
        self.answers.count
      end
      
    end
  end
end
