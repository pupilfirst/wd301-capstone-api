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
        summary: article.summary,
        teams: teams(article)
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
      content: article.content,
      teams: teams(article)
    }
  end

  def self.sport(article)
    { id: article.sport.id, name: article.sport.name }
  end

  def self.teams(article)
    article.teams.map { |team| { id: team.id, name: team.name } }
  end

  private_class_method :sport, :teams
end
