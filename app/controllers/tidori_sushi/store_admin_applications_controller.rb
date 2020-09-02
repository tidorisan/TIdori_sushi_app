class TidoriSushi::StoreAdminApplicationsController < ApplicationController
  def new
  	@store_admin_application = StoreAdminApplication.new
  end

  def confirm
  	@store_admin_application = StoreAdminApplication.new(store_admin_application_params)
  	render :new if @store_admin_application.invalid?
  end

  def create
  	@store_admin_application = StoreAdminApplication.new(store_admin_application_params)
  	if params[:back]
  		render "new"
  	elsif
  		@store_admin_application.save
  		redirect_to tidori_sushi_store_admin_applications_success_path
  	else
  		render "new"
  	end
  end

  def success
  end

  private
  def store_admin_application_params
  	params.require(:store_admin_application).permit(:address,
  													:postal_code,
  													:store_name,
  													:kana_store_name,
  													:phone_number,
  													:branch_name,
  													:kana_branch_name,
  													:email,
  													:family_name,
  													:first_name,
  													:kana_family_name,
  													:kana_first_name,
  													:birthday,
  													:job_title,
  													:permit_to_store_manager,
  													:get_restaurant_sales_permit_form,
  													:related_with_antisocial_force,
  													:mannaers_industry)
  end
end
