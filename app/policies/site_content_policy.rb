class SiteContentPolicy < ApplicationPolicy
    attr_reader :user, :site_content
  
    def initialize(user, site_content)
      @user = user
      @site_content = site_content
    end
  
    def edit?
        rolecheck(user, :editor)
    end

    def update?
        rolecheck(user, :editor)
    end
end