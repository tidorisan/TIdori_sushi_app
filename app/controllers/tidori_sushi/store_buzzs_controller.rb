class TidoriSushi::StoreBuzzsController < ApplicationController
  def new
    @store_buzz = StoreBuzz.new
  end

  def index
    @store = Store.find(params[:store_id])
    @store_buzzs = @store.store_buzzs.all
  end

  def create
  	@store_buzz = StoreBuzz.new(store_buzz_params)
    @store = Store.find(params[:store_id])
    @store_buzz.store_id = @store.id
    @store_buzz.user_id = current_user.id
    if @store_buzz.save
      redirect_to tidori_sushi_store_store_buzzs_path(@store)
    else
      render 'tidori_sushi/store_buzzs/new'
    end
  end

  def destroy
  	
  end

  private
  def store_buzz_params
    params.require(:store_buzz).permit(:title, :detail, :image, :visit_date, :use_time, :pay_price)
  end
end
