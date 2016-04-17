class SaleBotJob < ActiveJob::Base
  queue_as :default

  def perform(sale)
    @sale = sale
    @user = User.find_by email: 'bot1@flipero.ch'
    @sale.update(price: @sale.price + 1, user: @user)
  end
end