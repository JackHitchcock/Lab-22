class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
  def create
      @article = Article.new(params.require(:article).permit(:title, :text))
      
      @article.save
      redirect_to @article
  end

end
private
    def article_params
        params.require(:article).permit(:title, :text)
    end
