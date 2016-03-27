class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def buy
    @sale = Sale.find(params[:id])
    @sale.update(price: @sale.price + 1)

    redirect_to :back
  end

  def show
    @sale = Sale.find(params[:id])
  end
end
