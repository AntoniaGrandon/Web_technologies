class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.persisted?
      can [:read, :create], Challenge
      can :create, Progress
      can [:read, :update, :destroy], Challenge, user_id: user.id
      can [:read, :update, :destroy], Progress, user_id: user.id
      can :update, User, id: user.id
    else
      can :read, Challenge
    end
  end
end