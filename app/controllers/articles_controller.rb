class ArticlesController < ApplicationController
  # GET /articles
  def index
    articles = Article.all
    render json: ArticlesPresenter.index(articles), status: :ok
  end

  # GET /articles/:id
  def show
    article = Article.find_by(id: params[:id])
    if article
      render json: ArticlesPresenter.show(article), status: :ok
    else
      render json: { errors: ['Article not found'] }, status: :not_found
    end
  end
end
