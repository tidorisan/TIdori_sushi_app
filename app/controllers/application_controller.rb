class ApplicationController < ActionController::Base
  #authorize_resource :class => false
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url
  end

  private

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.role == "site_admin"
      users_homes_path
    elsif resource_or_scope.role == "store_admin"
      users_stores_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :site_admin
      users_homes_path
    elsif resource_or_scope == :store_admin
      users_homes_path
    else
      root_path
    end
  end

  def skip_checking_authorzation?
    devise_controller?
  end

  def login_required
    if user_signed_in?
      redirect_to root_path unless current_user.role == "store_admin" ||
                                   current_user.role == "site_admin"
    else
      redirect_to root_path
    end
  end

  def my_store
    return if current_user.role == "site_admin"
    if current_user.stores.where(id: params[:store_id]).empty?
      redirect_to users_homes_path
    end
  end
end
