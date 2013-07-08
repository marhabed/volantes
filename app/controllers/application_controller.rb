class ApplicationController < ActionController::Base

    before_filter :authenticate_user!



end

class RootWithoutLoginController < ApplicationController
    skip_before_filter :authenticate_user!


end
