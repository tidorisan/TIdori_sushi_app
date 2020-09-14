class Users::UsersController < ApplicationController
  before_action :login_required, only: [:new, :show, :edit, :update, :leave, :unsubscribe_update]
  before_action :login_required_confimation_page, only: :confirmation
  before_action :site_admin?, only: [:customer, :store_admin]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to users_homes_path
    end
  end

  def customer
    @users = User.where(role: "customer").page(params[:page])
  end

  def store_admin
    @users = User.where(role: "store_admin").page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_user_path(@user)
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
      @user.stores.each do |store|
        store.update(display_status: false)
        store.store_menus.update(display_status: false)
        store.coupons.update(enabled_status: false)
      end
      reset_session
      redirect_to users_homes_path
    else
      render '/users/users/leave'
    end
  end

  private

  def user_params
    params.require(:user).permit(:unsubscribe_status,
                                 :family_name,
                                 :first_name, :kana_family_name,
                                 :kana_first_name,
                                 :birthday,
                                 :job_title,
                                 :permit_to_store_manager,
                                 :get_restaurant_sales_permit_form,
                                 :related_with_antisocial_force,
                                 :mannaers_industry)
  end

  def login_required_confimation_page
    if user_signed_in?
      redirect_to root_path
    end
  end

end
