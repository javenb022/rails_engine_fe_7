class MerchantFacade

  def one_merchant(id)
    json = service.merchant(id)
    Merchant.new(json[:data])
  end

  def all_merchants
    json = service.merchants_all
    merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
    merchants
  end

  def merchants_items(id)
    json = service.items(id)
    all_items = json[:data].map do |item_data|
      Item.new(item_data)
    end
    all_items
  end

  def service
    MerchantService.new
  end
end