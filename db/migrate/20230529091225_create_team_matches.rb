class CreateTeamMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches_teams do |t|
      t.belongs_to :team
      t.belongs_to :match
      t.timestamps
    end
  end
end
