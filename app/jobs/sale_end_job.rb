class SaleEndJob < ActiveJob::Base
  queue_as :default

  def perform(sale)
      sale.address = sale.user.address
  end
end
