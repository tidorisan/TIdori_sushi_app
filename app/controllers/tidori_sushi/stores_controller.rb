class TidoriSushi::StoresController < ApplicationController

	def top
    @q = Store.ransack(params[:q])
	end


  def index
  end

  def show
  end

  def search
    @q = Store.ransack(q_params)
    @stores = @q.result(distinct: true)
  end

  def favorites
  end

  private
  def q_params
    params.permit(:address, :store_name, :branch_name, :store_genre)
  end
end