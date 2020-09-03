class ApplicationController < ActionController::Base
  #load_and_authorize_resource :class => false
	before_action :configure_permitted_parameters, if: :devise_controller?


	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
	end

  # def current_ability
  #   if user_signed_in?
  #     @current_ability ||= Ability.new(current_user)
  #   else
  #     @current_ability ||= Ability.new(nil)
  #   end
  # end

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
end
