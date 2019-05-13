class CouponController < ApplicationController
  def index 
    @coupons = Coupons.all 
  end
  
  def new 
  end 
  
  def show 
    @coupon = Coupons.find(params[:id])
  end 
  
  def create 
    @coupon = Coupons.new(params)
    @coupon.save 
    redirect_to coupon_path(@coupon)
  end 
  
  def update 
  end 
  
  

end