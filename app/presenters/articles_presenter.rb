# frozen_string_literal: true

class ArticlesPresenter
  def initialize(articles)
    @articles = articles
  end

  def as_json
    articles.map do |article|
      {
        id: article.id,
        title: article.title,
        summary: article.summary,
        thumbnail: article.thumbnail_url,
        sport: sport(article),
        date: article.created_at,
        content: article.content
      }
    end
  end

  private
  def sport(article)
    {
      id: article.sport.id,
      name: article.sport.name
    }
  end
  attr_reader :articles
end
