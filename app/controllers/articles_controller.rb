class ArticlesController < ApplicationController

  # GET /articles
  def index
    articles = Article.all
    render json: ArticlesPresenter.new(articles).as_json, status: :ok
  end

  # GET /articles/:id
  def show
    article = Article.find_by_id(params[:id])
    if article
      render json: article, status: :ok
    else
      render json: { errors: ['Article not found'] }, status: :not_found
    end
  end
end