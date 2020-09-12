class Users::PasswordsController < ApplicationController
	def validation
		@key = Password.find(1)
		if @key.key == params[:key]
			redirect_to new_user_registration_path
		else
			render "/users/users/confirmation"
		end

	end

	private

	def params
		params.permit(:key)
	end
end
