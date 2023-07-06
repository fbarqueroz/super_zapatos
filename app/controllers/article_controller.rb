class ArticleController < ApplicationController
  def new
    @article = Article.new
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to new_article_path
    end
  end

  private
  def article_params
    params.require(:article).permit(:id_article, :name, :description, :price)
  end
end