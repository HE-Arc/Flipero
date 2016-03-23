class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def create
    @sale = Sale.create.params[:sale]
    redirect_to articles
  end
end
