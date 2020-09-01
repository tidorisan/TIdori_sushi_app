class Users::MenusController < ApplicationController
  def index
    @store = Store.find(params[:store_id])
    @store_menus = @store.store_menus.all
    @store_id = @store.id
  end

  def new
    @store_menu = StoreMenu.new
    @menu_genres = MenuGenre.all
  end

  def create
    @store_id = Store.find(params[:store_id])
    @store_menu = StoreMenu.new(store_menu_params)
    @store_menu.store_id = @store_id.id
    binding.pry
    if @store_menu.save
      redirect_to users_store_menu_path(@store_menu.id, @store_id.id)
    else
      render = "users/menus/show"
    end
  end

  def show
    @store_menu = StoreMenu.find(params[:id])
  end

  def edit
    @store_menu = StoreMenu.find(params[:id])
    @menu_genres = MenuGenre.all
  end

  def update
  	@store_menu = StoreMenu.find(params[:id])
    if @store_menu.update(store_menu_params)
      redirect_to users_store_menu_path(@store_menu)
    else
      render = "users/menus/edit"
    end
  end

  private
  def store_menu_params
    params.require(:store_menu).permit(:name, :comment, :tax_excluded_price, :menu_genre_id, :store_id)
  end

end
