class Users::StoresController < ApplicationController
  before_action :login_required

  def index
    if current_user.role == "site_admin"
      @stores = Store.all.page(params[:page])
    else
      @stores = current_user.stores.all.page(params[:page])
    end
  end

  def new
    @store = Store.new
    @store_genres = StoreGenre.all
  end

  def create
    @store = current_user.stores.build(store_params)
    if @store.save
      redirect_to users_store_path(@store)
    else
      render 'users/stores/new'
    end
  end

  def show
     @store = Store.find(params[:id])
    if current_user.id != @store.user_id
      redirect_to users_homes_path unless current_user.role == "site_admin"
    end
  end

  def edit
    @store = Store.find(params[:id])
    if current_user.id != @store.user_id
      redirect_to users_homes_path unless current_user.role == "site_admin"
    end
    @store_genres = StoreGenre.all
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to users_store_path(@store)
    else
      render 'users/stores/edit'
    end
  end

  private

  def store_params
    params.require(:store).permit(
      :latitude,
      :longitude,
      :store_name,
      :kana_store_name,
      :postal_code,
      :address,
      :phone_number,
      :branch_name,
      :kana_branch_name,
      :reservation,
      :reservation_of_considerations,
      :traffic_method,
      :business_day,
      :regular_holiday,
      :consumption_budget,
      :reservation_of_considerations,
      :equipment,
      :credit_card,
      :e_money,
      :comment,
      :private_room,
      :no_smoking,
      :home_page,
      :news,
      :image,
      :store_genre_id,
      :parking,
      :display_status,
      :reserved
    )
  end

end
