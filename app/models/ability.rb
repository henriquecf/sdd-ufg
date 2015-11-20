class Ability
  include CanCan::Ability

  def initialize(user)
    if user.coordinator?
      can :manage, :all
    else
      can :read, :all
      can :access, :rails_admin
      can :dashboard
    end
  end
end
