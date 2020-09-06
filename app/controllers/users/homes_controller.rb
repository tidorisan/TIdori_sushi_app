class Users::HomesController < ApplicationController
	before_action :login_required

  	def top
  	end

  	private
  	def login_required
      redirect_to root_path unless current_user.role == "store_admin" || current_user.role == "site_admin"
  	end
end
