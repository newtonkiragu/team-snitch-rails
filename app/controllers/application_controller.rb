class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.new_user_session_path, alert: exception.message
  end
  def after_sign_out_path_for(_user)
    schools_path
  end
  def after_sign_out_path_for(_mzazi)
    schools_path
  end
  def after_sign_in_path_for(_mzazi)
    students_path
  end
end
