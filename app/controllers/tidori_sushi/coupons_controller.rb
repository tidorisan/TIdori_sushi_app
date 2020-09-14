class TidoriSushi::CouponsController < ApplicationController
  before_action :login_required, only: [:show, :timepass]
  before_action :timepass

  def index
    @coupons = Coupon.where(enabled_status: true).order("created_at DESC")
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def timepass
    time = Time.now
    coupons = Coupon.all
    coupons.each do |c|
      if c.created_at + c.expiration_date.minutes < time && c.enabled_status == true
        c.enabled_status = false
        c.save
      end
    end
  end

  private

  def login_required
    if user_signed_in?
      redirect_to root_path unless current_user.role == "customer"
    else
      redirect_to root_path
    end
  end
end
