class TidoriSushi::MenusController < ApplicationController
  def index
  	@store = Store.find(params[:store_id])
  	@menus = StoreMenu.all
  end
end
