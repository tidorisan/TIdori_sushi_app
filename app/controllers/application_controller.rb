class ApplicationController < ActionController::Base
  authorize_resource :class => false
  # load_and_authorize_resource :class => false
  # authorize_resource unless: :skip_checking_authorzation?
	before_action :configure_permitted_parameters, if: :devise_controller?


	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
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
end
