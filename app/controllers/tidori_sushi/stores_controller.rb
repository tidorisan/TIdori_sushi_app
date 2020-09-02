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
    @favorite_stores = current_user.favorite_stores.includes(:store).all
  end

  # 以下を追加
  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  private
  def q_params
    params.require(:q).permit(:address_or_store_name_or_branch_name_cont, :store_genre_genre_name_eq)
  end
end