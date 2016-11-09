class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def home
    # home page
  end

end
