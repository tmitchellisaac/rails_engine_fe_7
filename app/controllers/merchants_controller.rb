class MerchantsController < ApplicationController

  def index
    @facade = MerchantFacade.new(params)
  end

  def show
    @facade = MerchantFacade.new(params)
  end

  # def find 
  #   @found_merchant = MerchantFacade.new(params).merchant_by_name
  #   render :index
  # end
end


