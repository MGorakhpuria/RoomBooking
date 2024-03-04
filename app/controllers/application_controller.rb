class ApplicationController < ActionController::Base

  def current_user
    User.find_by(email: "mayank@gmail.com")
  end
end
