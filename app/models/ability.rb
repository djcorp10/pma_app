class Ability
  include CanCan::Ability

  def initialize(user)

  	if user.admin?
  		can :manage, :all
  	elsif user.nil?
  		can :read, :all
  		can :manage, User, id => user.id
  	else
  		can :read, :all
  	end

  end
end