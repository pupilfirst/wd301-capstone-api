class ArticlesController < ApplicationController

  # GET /articles
  def index
    @articles = Article.all

    render json: @articles, status: :ok
  end

  # GET /articles/:id
  def show
    if article = Article.find_by(id: params[:id])
      render json: article, status: :ok
    else
      render json: { errors: ['Article not found'] }, status: :not_found
    end
  end
end
