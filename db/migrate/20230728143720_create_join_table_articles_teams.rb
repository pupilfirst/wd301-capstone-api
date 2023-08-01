class CreateJoinTableArticlesTeams < ActiveRecord::Migration[7.0]
  def change
    create_join_table :articles, :teams do |t|
      t.index %i[article_id team_id]
      t.index %i[team_id article_id]
    end
  end
end
