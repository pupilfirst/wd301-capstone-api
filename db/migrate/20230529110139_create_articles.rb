class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :summary
      t.string :thumbnail_url
      t.text :content
      t.string :sport

      t.timestamps
    end
  end
end
