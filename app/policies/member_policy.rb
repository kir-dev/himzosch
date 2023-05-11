class MemberPolicy < ApplicationPolicy
    attr_reader :user, :member
  
    def initialize(user, member)
      @user = user
      @member = member
    end
  
    def new?
        rolecheck(user, :editor)
    end

    def edit?
        rolecheck(user, :editor)
    end

    def create?
        rolecheck(user, :editor)
    end

    def update?
        rolecheck(user, :editor)
    end

    def destroy?
        rolecheck(user, :editor)
    end
end