class Users::UsersController < ApplicationController
  def new
  end

  def create

  end

  def confirmation

  end

  def leave
  end

  def unsubscribe_update
  	@user = User.find(current_user.id)
  	if @user.update(unsubscribe_status: false)
  		reset_session
  		redirect_to users_homes_path
  	else
  		render '/users/users/leave'
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:unsubscribe_status)
  end
end
