class PicturePolicy < ApplicationPolicy
    attr_reader :user, :picture
  
    def initialize(user, picture)
      @user = user
      @picture = picture
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