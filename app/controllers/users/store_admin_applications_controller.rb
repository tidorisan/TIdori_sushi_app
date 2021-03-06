class Users::StoreAdminApplicationsController < ApplicationController
  before_action :login_required
  before_action :site_admin?

  def index
    @store_admin_applications = StoreAdminApplication.all
  end

  def show
    @store_admin_application = StoreAdminApplication.find(params[:id])
  end

  def update
    @store_admin_application = StoreAdminApplication.find(params[:id])
    if @store_admin_application.update(store_admin_application_params)
      redirect_to users_store_admin_applications_path
    else
      render 'users/store_admin_applications/edit'
    end
  end

  private

  def store_admin_application_params
    params.require(:store_admin_application).permit(:process_status)
  end

end
