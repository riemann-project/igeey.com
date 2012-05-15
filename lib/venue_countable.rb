module VenueCountable
  def self.included(base)
    base.class_eval do
      def time_count
        self.records.map(&:time).compact.sum
      end

      def money_count
        self.records.map(&:money).compact.sum
      end

      def online_count
        self.records.map(&:online).compact.sum
      end

      def goods_count
        self.records.map(&:goods).compact.sum
      end

      def records_count
        self.records.size
      end
    end
  end
end
