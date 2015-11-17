class Ability
  include CanCan::Ability

  def initialize(user)
    if user.coordinator?
      can :manage, :all
    else
      can :read, :all
    end
  end
end
