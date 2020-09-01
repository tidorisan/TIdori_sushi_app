class Users::StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
    @store_genres = StoreGenre.all
  end

  def create
    @store = current_user.stores.build(store_params)
    binding.pry
    if @store.save
      flash[:notice] = "店舗登録が完了いたしました"
      redirect_to users_store_path(@store)
    else
      render 'users/stores/index'
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
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
      :reserved)
  end

end
