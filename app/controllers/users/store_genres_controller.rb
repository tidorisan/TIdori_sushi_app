class Users::StoreGenresController < ApplicationController
  before_action :login_required

  def index
  	@store_genre = StoreGenre.new
  	@store_genres = StoreGenre.page(params[:page])
  end

  def create
  	@store_genre = StoreGenre.new(store_genre_params)
    @store_genres = StoreGenre.all
    if @store_genre.save
      redirect_to users_store_genres_path
    else
      render 'users/store_genres/index'
    end
  end

  def edit
  	@store_genre = StoreGenre.find(params[:id])
  end

  def update
  	@store_genre = StoreGenre.find(params[:id])
    if @store_genre.update(store_genre_params)
      redirect_to users_store_genres_path
    else
      render 'users/store_genres/edit'
    end
  end

  private
  def store_genre_params
    params.require(:store_genre).permit(:genre_name, :display_status)
  end

  def login_required
      if user_signed_in?
        redirect_to root_path unless current_user.role == "store_admin" || current_user.role == "site_admin"
      else
        redirect_to root_path
      end
  end
end
