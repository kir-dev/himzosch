class DesignPolicy < ApplicationPolicy
    attr_reader :user, :design
  
    def initialize(user, design)
      @user = user
      @design = design
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
