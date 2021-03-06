class TidoriSushi::StoresController < ApplicationController
  def top
    @q = Store.ransack(params[:q])
    active_user = User.where(unsubscribe_status: true)
    @stores = Store.where(user_id: active_user).
      where(display_status: true).limit(8).order(id: "DESC")
  end

  def show
    @store = Store.find(params[:id])
    @store_menus = @store.store_menus.where(display_status: true)
    @store_buzzs = @store.store_buzzs
  end

  def search
    @q = Store.ransack(q_params)
    @stores = @q.result(distinct: true).where(display_status: true).includes(:store_genre).
      page(params[:page])
    active_user = User.where(unsubscribe_status: true)
    @index_stores = Store.where(id: active_user).where(display_status: true).
        includes(:store_genre).limit(4).order(id: "DESC")
  end

  def favorites
    @favorite_stores = current_user.favorite_stores.includes(:store).page(params[:page])
  end

  private

  def q_params
    params.require(:q).permit(:address_or_store_name_or_branch_name_or_store_genre_genre_name_cont,
                              :store_genre_genre_name_eq)
  end
end
