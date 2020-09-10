class TidoriSushi::StoreBuzzsController < ApplicationController
  before_action :login_required

  def new
    @store_buzz = StoreBuzz.new
  end

  def index
    @store = Store.find(params[:store_id])
    @store_buzzs = @store.store_buzzs.page(params[:page])
    binding.pry
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
    @store = Store.find(params[:store_id])
    @store_buzz = @store.store_buzzs.find(params[:id])
    @store_buzz.user_id = current_user.id
    if @store_buzz.destroy
      redirect_to tidori_sushi_store_store_buzzs_path(@store)
    else
      render 'tidori_sushi/store_buzzs/index'
    end
  end

  private

  def store_buzz_params
    params.require(:store_buzz).permit(:title, :detail, :image, :visit_date, :use_time, :pay_price)
  end

  def login_required
    if user_signed_in?
      redirect_to root_path unless current_user.role == "customer"
    else
      redirect_to root_path
    end
  end
end
