class UserFilterController < ApplicationController
  
  
  def filter_by_role
    
    if current_user.role.name == "company_owner"
      if !current_user.company.nil?
        @branches = current_user.company.branches
       end
      render 'branches/index'
    end
  end
end