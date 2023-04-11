class ArticlePolicy < ApplicationPolicy
    attr_reader :user, :article
  
    def initialize(user, article)
      @user = user
      @article = article
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