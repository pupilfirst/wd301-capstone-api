# frozen_string_literal: true

module Matches
  class Presenter
    def calculate_score(match)
      if match.running?
        # TODO: make score service
        "3-5" # calculate actual score based on time
      else
        "3-9" # TODO: remove this and store this score for ended matches
      end
    end

    def teams(match)
      match.teams.map do |team|
        {
          id: team.id,
          name: team.name
        }
      end
    end

    def sport_name(match)
      match.teams.first.sport.name
    end

  end
end
