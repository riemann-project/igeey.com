class UserObserver < ActiveRecord::Observer
  def after_create(user)
    user.check_badge_condition_on('id')
  end
end
