class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end

    if user.id == user.account_id
      can :read, :all, :user_id => user.account_id
      can :create, :all, :user_id => user.account_id
      can :update, :all, :user_id => user.account_id
      can :destroy, :all, :user_id => user.account_id
    else
      can :read, :all, :user_id => user.account_id
      cannot :create, :all
      cannot :update, :all
      cannot :destroy, :all
    end
  end
end
