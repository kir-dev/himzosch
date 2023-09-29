class LabelPolicy < ApplicationPolicy
    attr_reader :user, :label
  
    def initialize(user, label)
      @user = user
      @label = label
    end

    def index?
        rolecheck(user, :editor)
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
