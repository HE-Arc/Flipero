class SaleEndJob < ActiveJob::Base
  queue_as :default

  def perform(sale)
      @sale = sale
      @user = sale.user
      @sale.update(address: @user.address)
  end
end
