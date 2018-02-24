class Ability
  include CanCan::Ability

  def initialize(user)
    can :destroy, Product do |product|
      product.merchant.user == user
    end
  end
end
