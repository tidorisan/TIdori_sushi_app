class Users::StoreEquipmentsController < ApplicationController
  before_action :login_required

  def index
    @equipment = Equipment.new
    @equipments = Equipment.all
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to users_store_equipments_path
    else
      render 'users/store_equipments/index'
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      redirect_to users_store_equipments_path
    else
      render 'users/store_equipments/edit'
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit(:genre_name, :display_status)
  end

  def login_required
    if user_signed_in?
      redirect_to root_path unless current_user.role == "store_admin" ||
       current_user.role == "site_admin"
    else
      redirect_to root_path
    end
  end
end
