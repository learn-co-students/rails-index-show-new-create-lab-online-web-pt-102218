class CouponsController < ApplicationController 

  def index 
    @coupons = Coupon.all 
  end 
  
  def show 
    @coupon = Coupon.find(params[:id])
    puts params[:id]
  end 
  
  def new 
  end 
  
  def create
    @coupon = Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
    redirect_to coupon_path(@coupon)
    # here we are redirecting to the new resources show page
  end 
end 