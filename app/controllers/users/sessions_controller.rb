# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # ログイン時に退会済みの場合ログインできないようにする
  def create
    @user = User.find_by(email: params[:user][:email].downcase)
    if @user
      if @user.valid_password?(params[:user][:password]) && (@user.unsubscribe_status == false)
        flash[:error] = "退会済みです。"
        redirect_to new_user_session_path
      else
        super
      end
    else
      redirect_to new_user_session_path
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def new_guest
    user = User.guest
    sign_in user
    redirect_to root_path
  end
end
