class RenameTypeInSport < ActiveRecord::Migration[7.0]
  def change
    rename_column :sports, :type, :sport_type
  end
end
