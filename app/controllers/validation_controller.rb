class ValidationController < ApplicationController

  def self.getauth
    puts 'before_filter :authenticate_user!'
  end
  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end

  # To see current_user in Models
  def set_current_user
    User.current = current_user
  end

end