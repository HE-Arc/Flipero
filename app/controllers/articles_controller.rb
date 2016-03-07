class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def buy
      flash.notice = "TODO: buy an article #{params[:id]}"

      redirect_to action: :index
    end
end
