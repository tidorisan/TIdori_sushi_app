class TidoriSushi::StoresController < ApplicationController
  def top
    @q = Store.ransack(params[:q])
    active_user = User.where(unsubscribe_status: true)
    @stores = Store.where(user_id: active_user).where(display_status: true).limit(8).order(id: "DESC")
  end

  def show
    @store = Store.find(params[:id])
  end

  def search
    @q = Store.ransack(q_params)
    @stores = @q.result(distinct: true)
    active_user = User.where(unsubscribe_status: true)
    @index_stores = Store.where(user_id: active_user).where(display_status: true).limit(4).order(id: "DESC")
  end

  def favorites
    active_store = Store.where(display_status: true)
    @favorite_stores = current_user.favorite_stores.where(id: active_store).includes(:store)
    # 動作確認する
    # @favorite_stores_page = Store.where(user_id: favorite_stores).page(params[:page])
    # binding.pry
  end

  private

  def q_params
    params.require(:q).permit(:address_or_store_name_or_branch_name_or_store_genre_genre_name_cont,
                              :store_genre_genre_name_eq)
  end
end
