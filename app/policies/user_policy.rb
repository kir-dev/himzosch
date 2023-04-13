class UserPolicy < ApplicationPolicy
    attr_reader :user, :user
  
    def initialize(myuser, user)
      @myuser = myuser
      @user = user
    end
  
    def index?
        @myuser&.admin?
    end

    def show?
        @myuser.present? && (@myuser.admin? || @myuser==@user)
    end

    def edit?
        @myuser&.admin?
    end

    def update?
        @myuser&.admin?
    end

    def destroy?
        @myuser&.admin?
    end
end