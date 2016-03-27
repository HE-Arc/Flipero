class SalesController < ApplicationController
  before_action :authenticate_user!, only: [:buy]

  def index
    @sales = Sale.all
  end

  def buy
    @sale = Sale.find(params[:id])
    @user = User.find(params[:user_id])
    @sale.update(price: @sale.price + 1, user: @user)

    redirect_to :back
  end

  def show
    @sale = Sale.find(params[:id])
  end
end
