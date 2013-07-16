class UserFilterController < ApplicationController
  
  
  def filter_by_role
    
    if current_user.role.name == "company_owner"
      @branches = current_user.company.branches
      render 'branches/index'
    end
    
  end
  
end