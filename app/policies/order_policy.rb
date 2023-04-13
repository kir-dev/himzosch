class OrderPolicy < ApplicationPolicy
    attr_reader :user, :order
  
    def initialize(user, order)
      @user = user
      @order = order
    end
  
    def new?
      rolecheck(user, :editor)
    end

    def create?
      rolecheck(user, :editor)
  end
end