class SaleEndJob < ActiveJob::Base
  queue_as :default

  def perform(sale)
    #TODO
  end
end
