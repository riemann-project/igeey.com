class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.is_admin?
      can :manage, :all
    else
      cannot :index, Problem do |problem|
        problem.user.is_admin = false
      end
      
      cannot [:index, :edit, :update], Badge do |badge|
        badge.user.is_admin = false
      end

      cannot :manage, Blog do |blog|
        blog.user.is_admin = false
      end

      can :manage, Actional do |actional|
        actional.user = user
      end

      can [:destroy, :update], Kase do |kase|
        kase.user = user
      end

      can [:destroy, :update], Photo do |photo|
        photo.user = user
      end

      can :manage, Answer do |answer|
        answer.user = user
      end

      # can :manage, :all
      # can :read, :all
    end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
