class TidoriSushi::StoreBuzzsController < ApplicationController
  before_action :user_side_login_required

  def new
    @store_buzz = StoreBuzz.new
  end

  def index
    @store = Store.find(params[:store_id])
    @store_buzzs = @store.store_buzzs.page(params[:page])
  end

  def create
    @store_buzz = StoreBuzz.new(store_buzz_params)
    @store = Store.find(params[:store_id])
    @store_buzz.store_id = @store.id
    @store_buzz.user_id = current_user.id
    # google apiの自然言語処理を行うために記載
    @store_buzz.score = Language.get_data(store_buzz_params[:detail])
    if @store_buzz.save
      redirect_to tidori_sushi_store_store_buzzs_path(@store)
    else
      redirect_to tidori_sushi_store_store_buzzs_path(@store)
    end
  end

  def destroy
    @store = Store.find(params[:store_id])
    @store_buzz = @store.store_buzzs.find(params[:id])
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

end
