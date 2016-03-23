class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def buy
      flash.notice = "TODO: buy an article #{params[:id]}"

      #TODO

      redirect_to action: :index
    end
    
    def show
      @articles = Article.find(params[:id])
    end
end
