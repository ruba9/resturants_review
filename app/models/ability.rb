class Ability
  include CanCan::Ability

  def initialize(user)

    if user.present? && user.admin?
      can :manage, :all
    else
      can :update, Review do |review|
        review.user == user
      end
      can :destroy,Review do |review|
        review.user == user
      end
      can [:read, :create], Review
      can :read, Resturant
      can :read, Category
    end
  end
end
