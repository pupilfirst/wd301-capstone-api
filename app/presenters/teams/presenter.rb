# frozen_string_literal: true
module Teams
  class Presenter
    def make_team(team)
      {
        id: team.id,
        name: team.name,
        plays: team.sport.name
      }
    end
  end

end