class SalesController < ApplicationController
  before_action :authenticate_user!, only: [:buy]
  respond_to :html, :js

  def index
    @sales = Sale.all
  end

  def notendedsales
    @sales = Sale.where("date_end > ?", DateTime.now)
  end

  def endedsales
    @sales = Sale.where("date_end <= ?", DateTime.now)
  end

  def buy
    @sale = Sale.find(params[:id])
    @user = current_user
    @sale.update(price: @sale.price + 1, user: @user)

    redirect_to :back
  end

  def show
    @sale = Sale.find(params[:id])
  end
end
