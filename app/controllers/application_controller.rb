class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to home_path, alert: exception.message }
      format.json { render json: { error: exception.message }, status: 403 }
    end
  end
end
