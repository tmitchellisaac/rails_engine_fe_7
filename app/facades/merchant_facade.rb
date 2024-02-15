class MerchantFacade
  attr_reader :merchants,
              :merchant_search

  def initialize(params)
    @params = params
    @merchant_search = if params[:q]
      merchant_by_name
    end
  end

  def merchants
    # if @params[:q]
    #  @merchant = merchant_by_name
    #  @merchants = MerchantService.new.merchants.map do |merch_data|
    #   Merchant.new(merch_data)
    # end
    # else
      @merchants = MerchantService.new.merchants.map do |merch_data|
        Merchant.new(merch_data)
      end
    # end
  end

  def merchant
    service = MerchantService.new
    merchant_data = service.merchant(@params[:id])
    @merchant = Merchant.new(merchant_data)
  end

  def items_of_merchant
    service = MerchantService.new.items_by_merchant(@params[:id])
    service.map do |item_data|
      Item.new(item_data)
    end
  end

  def merchant_by_name
    service = MerchantService.new
    merchant_data = service.find_merch_by_name(@params[:q])
    if merchant_data[:id]
      @merchant = Merchant.new(merchant_data)
    else
      nil
    end
  end

end