class Users::CouponsController < ApplicationController
  before_action :login_required

  def index
    @coupons = Coupon.all.page(params[:page])
    @store_id = Store.find(params[:store_id])
  end

  def new
    @coupon = Coupon.new
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
                                   :expiration_date)
  end

  def login_required
    if user_signed_in?
      redirect_to root_path unless current_user.role == "store_admin" ||
                                   current_user.role == "site_admin"
    else
      redirect_to root_path
    end
  end
end
