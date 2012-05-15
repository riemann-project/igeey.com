# encoding: utf-8
class Sync < ActiveRecord::Base
  belongs_to :syncable, :polymorphic => true
  belongs_to :user
  
  validate :must_has_sync
  def must_has_sync
    errors['none_to_sync'] = '没有要同步的网站' if sina.blank? && douban.blank?
  end
end
