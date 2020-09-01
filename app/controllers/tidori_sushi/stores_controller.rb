class TidoriSushi::StoresController < ApplicationController

	def top
    @q = Store.ransack(params[:q])
    @stores = Store.all.order(id: "DESC")
	end


  def index
  end

  def show
    @store = Store.find(params[:id])
  end

  def search
    @q = Store.ransack(q_params)
    @stores = @q.result(distinct: true)
    @index_stores = Store.all.order(id: "DESC")
  end

  def favorites
    @stores = current_user.favorites.includes(:store)
  end

  private
  def q_params
    params.require(:q).permit(:address_or_store_name_or_branch_name_cont, :store_genre_genre_name_eq)
  end
end