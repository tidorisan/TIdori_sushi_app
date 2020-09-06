class Users::MenuGenresController < ApplicationController
  before_action :login_required
  
  def index
    @menu_genre = MenuGenre.new
    @menu_genres = MenuGenre.all
  end

  def create
     @menu_genre = MenuGenre.new(menu_genre_params)
     @menu_genres = MenuGenre.all
    if @menu_genre.save
      redirect_to users_menu_genres_path
    else
      render 'users/menu_genres/index'
    end
  end

  def edit
    @menu_genre = MenuGenre.find(params[:id])
  end

  def update
    @menu_genre = MenuGenre.find(params[:id])
    if @menu_genre.update(menu_genre_params)
      redirect_to users_menu_genres_path
    else
      render 'users/menu_genres/edit'
    end
  end

  private
  def menu_genre_params
    params.require(:menu_genre).permit(:genre_name, :display_status)
  end

  def login_required
      if user_signed_in?
        redirect_to root_path unless current_user.role == "store_admin" || current_user.role == "site_admin"
      else
        redirect_to root_path
      end
  end
end
