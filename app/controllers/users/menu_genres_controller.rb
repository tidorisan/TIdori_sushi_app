class Users::MenuGenresController < ApplicationController
  def index
    @menu_genre = MenuGenre.new
    @menu_genres = MenuGenre.all
  end

  def create
     @menu_genre = MenuGenre.new(menu_genre_params)
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
end
