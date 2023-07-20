class MerchantsController < ApplicationController
  def index
    @merchant_facade = MerchantFacade.new.all_merchants
  end

  def show
    @merchant = MerchantFacade.new.one_merchant(params[:id])
    @items = MerchantFacade.new.merchants_items(params[:id])
  end
end