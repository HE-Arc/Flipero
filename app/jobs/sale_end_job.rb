class SaleEndJob < ActiveJob::Base
  queue_as :default

  def perform(*sales)
    logger.debug "Todo finir la vente ici"
  end
end
