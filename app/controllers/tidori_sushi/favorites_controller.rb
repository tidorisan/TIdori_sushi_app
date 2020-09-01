class TidoriSushi::FavoritesController < ApplicationController
	def create
		@favorite = current_user.favorite_stores.build(store_id: params[:store_id])
		if @favorite.save
			redirect_to tidori_sushi_store_path(@favorite)
		else
			redirect_to tidori_sushi_store_path(@favorite)
		end
	end

	def destroy
		@favorite = current_user.favorite_stores.find_by(store_id: params[:store_id])
		if @favorite.destroy
			redirect_to tidori_sushi_store_path(@favorite)
		else
			redirect_to tidori_sushi_store_path(@favorite)
		end
	end

end
