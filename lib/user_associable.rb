module UserAssociable
  def self.included(base)
    base.class_eval do
      belongs_to  :geo
      has_many :venues,         :foreign_key => :creator_id,:dependent => :destroy
      has_many :records,        :dependent => :destroy
      has_many :plans,          :dependent => :destroy
      has_many :tasks,          :dependent => :destroy
      has_many :comments,       :dependent => :destroy
      has_many :topics,         :dependent => :destroy
      has_many :photos,         :dependent => :destroy
      has_many :grants,         :dependent => :destroy
      has_many :badges,         :through => :grants, :source => :badge
      has_many :followings,     :class_name => "Follow",:foreign_key => :user_id
      has_many :follows,        :as => :followable, :dependent => :destroy
      has_many :followers,      :through => :follows, :source => :user
      has_many :sayings,        :dependent => :destroy
      has_many :doings,         :dependent => :destroy
      has_many :syncs,          :dependent => :destroy
      has_many :votes,          :dependent => :destroy
      has_many :notifications,  :dependent => :destroy
      has_many :taggings,       :dependent => :destroy
      has_many :tags,           :through => :taggings, :source => :tag
      has_many :events,         :dependent => :destroy
      has_many :questions,      :dependent => :destroy
      has_many :answers,        :dependent => :destroy
    end
  end
end
