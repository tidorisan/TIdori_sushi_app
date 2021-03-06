class Users::CouponsController < ApplicationController
  before_action :login_required
  before_action :my_store, only: [:index, :show, :edit, :new]

  def index
    @store = Store.find(params[:store_id])
    @coupons = @store.coupons.all.page(params[:page])
    @store_id = Store.find(params[:store_id])
  end

  def new
    @coupon = Coupon.new
    @store = Store.find(params[:store_id])
  end

  def create
    @store_id = Store.find(params[:store_id])
    @coupon = Coupon.new(coupon_params)
    @coupon.store_id = @store_id.id
    if @coupon.save
      redirect_to users_store_coupon_path(@store_id, @coupon)
    else
      render "users/coupons/new"
    end
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def edit
    @coupon = Coupon.find(params[:id])
  end

  def update
    @coupon = Coupon.find(params[:id])
    if @coupon.update(coupon_params)
      redirect_to users_store_coupon_path(@coupon)
    else
      render "users/coupons/edit"
    end
  end

  private

  def coupon_params
    params.require(:coupon).permit(:reason,
                                   :detail,
                                   :image,
                                   :target,
                                   :writing,
                                   :enabled_status,
                                   :expiration_date)
  end

end
