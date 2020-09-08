class Users::HomesController < ApplicationController
  before_action :login_required

  def top
  end

  private

  def login_required
    if user_signed_in?
      redirect_to root_path unless current_user.role == "store_admin" ||
                       current_user.role == "site_admin"
    else
      redirect_to root_path
    end
  end
end
