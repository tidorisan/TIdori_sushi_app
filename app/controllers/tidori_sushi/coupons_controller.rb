class TidoriSushi::CouponsController < ApplicationController
  before_action :user_side_login_required
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

end
