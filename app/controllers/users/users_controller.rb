class Users::UsersController < ApplicationController
  before_action :login_required


  def new
    @user = User.new
  end

  def update
    @user = User.find(params[:id])
    binding.pry
    if @user.update(user_params)
      redirect_to users_stores_path
    else
      render 'users/users/new'
    end

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
  	params.require(:user).permit(:unsubscribe_status, :family_name, :first_name, :kana_family_name, :kana_first_name, :birthday,
       :job_title, :permit_to_store_manager, :get_restaurant_sales_permit_form, :related_with_antisocial_force, :mannaers_industry)
  end

  def login_required
      redirect_to root_path unless current_user.role == "store_admin" || current_user.role == "site_admin"
  end
end
