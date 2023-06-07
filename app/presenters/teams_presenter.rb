# frozen_string_literal: true

class TeamsPresenter
  def self.index(teams)
    teams.map do |team|
      show(team)
    end
  end

  def self.show(team)
    {
      id: team.id,
      name: team.name,
      plays: team.sport.name
    }
  end
end
