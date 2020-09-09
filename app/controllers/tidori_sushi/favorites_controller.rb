class TidoriSushi::FavoritesController < ApplicationController
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
end
