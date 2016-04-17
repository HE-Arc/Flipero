class SalesController < ApplicationController
  before_action :authenticate_user!, only: [:buy]
  respond_to :html, :js

  def index
    @sales = Sale.order('id').all
  end

  def notendedsales
    @sales = Sale.order('id').where("date_end > ?", DateTime.now)
  end

  def endedsales
    @sales = Sale.order('id').where("date_end <= ?", DateTime.now)
  end

  def getsalestatus
    sales = notendedsales
    render :json => sales
  end

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
