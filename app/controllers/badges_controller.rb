# encoding: utf-8
class BadgesController < InheritedResources::Base
  before_filter :login_required
  after_filter  :clean_unread, :only => :get_badges

  def get_badges
    @badges = current_user.grants.where(:unread => true).map(&:badge)
    render :layout => false
  end

  def edit
    @badge = Badge.find(params[:id])
    render :layout => false if params[:layout] == 'false'
  end

  def update
    update! { badges_path }
  end

  private

  def clean_unread
    current_user.grants.where(:unread => true).map{|g| g.update_attribute(:unread, false)} if logged_in?
  end

end
