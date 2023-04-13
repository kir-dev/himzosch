class EnquiryPolicy < ApplicationPolicy
    attr_reader :user, :enquiry
  
    def initialize(user, enquiry)
      @user = user
      @enquiry = enquiry
    end
  
    def export?
      rolecheck(user, :editor)
    end
end