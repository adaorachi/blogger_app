class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def split_time
    @article_time = Article.created_at.split(' ')[0]
  end
end
