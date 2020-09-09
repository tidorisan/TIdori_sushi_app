class TidoriSushi::CouponsController < ApplicationController
  before_action :timepass, only: [:index, :show]

  def index
    @coupons = Coupon.where(enabled_status: false).order("created_at DESC")
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
