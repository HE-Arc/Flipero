class SalesController < ApplicationController
  before_action :authenticate_user!, only: [:buy]
  respond_to :html, :js

  def index
    # FIXME: SELECT N+1!
    # All?
    @sales = Sale.order('id').all
  end

  # en Ruby on dit: not_ended_sales
  def notendedsales
    @sales = Sale.order('id').where("date_end > ?", DateTime.now)
  end

  # en Ruby: ended_sales
  def endedsales
    @sales = Sale.order('id').where("date_end <= ?", DateTime.now)
  end

  # en Ruby on ne dit pas get, on dit: sales_status
  def getsalestatus
    sales = notendedsales
    render :json => sales
  end

  # FIXME: techniquement vous faites plusieurs ventes, vous devriez créer
  #        autant de ventes qu'il y en a. Ce code est susceptible à un
  #        RW conflict.
  #        Un SaleBot qui achète de manière déterminée après 5 secondes ne vous
  #        ménera pas loin dans la fortune.
  def buy
    @sale = Sale.find(params[:id])
    @user = current_user
    if @user.id != @sale.user.id and @user.credits >= @sale.price
      @user.update(credits: @user.credits - @sale.price)
      @sale.update(price: @sale.price + 1, user: @user)
      SaleBotJob.set(wait: 5.seconds).perform_later(@sale)
    end

    redirect_to :back
  end

  def show
    @sale = Sale.find(params[:id])
  end
end
