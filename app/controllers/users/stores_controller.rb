class Users::StoresController < ApplicationController
  def index
  end

  def new
    @store = Store.new
    @credit_cards = CreditCard.all
    @e_bills = EBill.all
    @equipments = Equipment.all
  end

  def create
    @store = current_user.stores.build(store_params)
    if @store.save
      flash[:notice] = "店舗登録が完了いたしました"
      redirect_to users_store_path
    else
      render 'users/stores/index'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private
  def store_params
    params.require(:store).permit( :store_name, :kana_store_name, :postal_code, :address, :phone_number, :branch_name, :kana_branch_name, :store_genre,
     :reservation, :reservation_of_considerations, :traffic_method, :business_day, :regular_holiday, :consumption_budget, :reservation_of_considerations,
      :equipment, :private_room, :no_smoking, :home_page, :news, :image, :genre_name)
  end

end
