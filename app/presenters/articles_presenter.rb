# frozen_string_literal: true

class ArticlesPresenter

  def self.index(articles)
    articles.map do |article|
      {
        id: article.id,
        title: article.title,
        thumbnail: article.thumbnail_url,
        sport: sport(article),
        date: article.created_at,
        summary: article.summary
      }
    end
  end

  def self.show(article)
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

  def self.sport(article)
    {
      id: article.sport.id,
      name: article.sport.name
    }
  end

  private_class_method :sport
end
