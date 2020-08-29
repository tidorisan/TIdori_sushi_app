class Users::StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
    @credit_cards = CreditCard.all
    @e_bills = EBill.all
    @equipments = Equipment.all
    @store.store_credit_cards.build
    @store.store_e_bills.build
    @store.store_equipments.build
  end

  def create
    @store = current_user.stores.build(store_params)
    binding.pry
    if @store.save
      flash[:notice] = "店舗登録が完了いたしました"
      redirect_to users_store_path
    else
      render 'users/stores/index'
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
    @credit_cards = CreditCard.all
    @e_bills = EBill.all
    @equipments = Equipment.all
    # 現時点では持ってnewでネストして持ってこれないのでそのまま
    # edit中間テーブルでの扱いをメンターさんに伺う。
    @store.store_credit_cards
    @store.store_e_bills
    @store.store_equipments
  end

  def update
    # 動作未確認/store.newが完成してから確認する
    @store = Store.find(params[:id])
    @store.user_id = current_user.id
    if @store.update(store_params)
      redirect_to users_store_path(@store)
    else
      render 'users/stores/edit'
    end
  end

  private
  def store_params
    params.require(:store).permit(
      :store_name,
      :kana_store_name,
      :postal_code,
      :address,
      :phone_number,
      :branch_name,
      :kana_branch_name,
      :store_genre,
      :reservation,
      :reservation_of_considerations,
      :traffic_method,
      :business_day,
      :regular_holiday,
      :consumption_budget,
      :reservation_of_considerations,
      :equipment,
      :private_room,
      :no_smoking,
      :home_page,
      :news,
      :image,
      :genre_name,
      :parking,
      :credit_cards_ids,
      :e_bill_ids,
      :equipment_ids,
      store_credit_cards_attributes: [:id,:credit_card_id],
      store_e_bills_attributes: [:id, :e_bill_id],
      store_equipments_attributes: [:id, :equipment_id])
  end

end
