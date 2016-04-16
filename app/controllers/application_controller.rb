class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, only: [:processbuy]
  respond_to :html

    def buycredits
      #Offers ar now hard coded in view. Improvment : Add differents offers in database and list them
    end

    def processbuy
      @user = current_user
      if(@user.credits == nil)
        @user.credits = 0
      end
      @user.update(credits: @user.credits + Integer(params[:nb]))
      flash[:success] = "You have bought " + params[:nb] + "credits"
      redirect_to :root
    end
end