class RenameSportAndAddForeignKeyArticles < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :sport, :sport_id

    change_column :articles, :sport_id, :bigint, using: "sport_id::bigint"

    add_foreign_key :articles, :sports, column: :sport_id
  end
end
