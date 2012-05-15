module VenueAssociable
  def self.included(base)
    base.class_eval do
      belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"
      belongs_to :geo

      has_many   :tasks,   :dependent => :destroy
      has_many   :topics,     :dependent => :destroy
      has_many   :sayings,    :dependent => :destroy
      has_many   :plans,      :dependent => :destroy
      has_many   :records,    :dependent => :destroy
      has_many   :photos,     :dependent => :destroy
      has_many   :follows,    :as => :followable,  :dependent => :destroy
      has_many   :followers,  :through => :follows,:source => :user
      has_many   :taggings,   :dependent => :destroy
      has_many   :tags,       :through => :taggings, :source => :tag
      has_many   :events,     :dependent => :destroy
    end
  end
end
