class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  #update devise redirects
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  def after_sign_up_path_for(resource_or_scope)
    new_user_session_path
  end
end
