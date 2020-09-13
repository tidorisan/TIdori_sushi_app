class TidoriSushi::FavoritesController < ApplicationController
  before_action :login_required

  def create
    @store = Store.find(params[:store_id])
    @favorite = current_user.favorite_stores.build(store_id: params[:store_id])
    if @favorite.save
      redirect_to tidori_sushi_store_path(@store)
    else
      redirect_to tidori_sushi_store_path(@store)
    end
  end

  def destroy
    @store = Store.find(params[:store_id])
    @favorite = current_user.favorite_stores.find_by(store_id: params[:store_id])
    if @favorite.destroy
      redirect_to tidori_sushi_store_path(@store)
    else
      redirect_to tidori_sushi_store_path(@store)
    end
  end

  private

  def login_required
    if user_signed_in?
      redirect_to root_path unless current_user.role == "customer"
    else
      redirect_to root_path
    end
  end
end
