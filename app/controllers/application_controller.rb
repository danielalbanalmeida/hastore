class ApplicationController < ActionController::Base
  include Pundit::Authorization
  protected
  def after_sign_in_path_for(resource)
    if resource.admin?
      '/admin'
    else
      root_path
    end
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  def authenticate_admin_user!
    unless user_signed_in? && current_user.admin?
      redirect_to root_path, alert: "You are not authorized to access this page."
    end
  end
  def after_sign_out_path_for(resource)
    root_path
  end
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
