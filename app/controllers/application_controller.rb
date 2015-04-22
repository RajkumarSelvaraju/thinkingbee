class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Authentication
  before_filter :authenticate_user!

  # No Cache
  before_filter :set_no_cache

  # Helper Method
  helper_method :current_company


   # Return current company for logged_in user
  def current_company
    @company ||= current_user.company if current_user.present?
  end

  protected

  # Modification of signin path
  def after_sign_in_path_for(resource)
    leads_path
  end

  def set_no_cache
   response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
   response.headers["Pragma"] = "no-cache"
   response.headers["Expires"] = "0"
  end

end