class TidoriSushi::MenusController < ApplicationController
  def index
    @store = Store.find(params[:store_id])
    @menus = @store.store_menus.where(display_status: true).page(params[:page])
  end
end
