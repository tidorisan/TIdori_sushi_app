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
  end

  private
  def q_params
    params.require(:q).permit(:address_or_store_name_or_branch_name_cont)
  end
end