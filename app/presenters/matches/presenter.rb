# frozen_string_literal: true

module Matches
  class Presenter
    def calculate_score(match)
      teams = match.teams
      i = -1
      if match.running?
        LiveScoreHelper.live_score(match).split(",")
      elsif match.score.nil? # if match has ended and score is nil
        score = LiveScoreHelper.random_score
        match.update!(score: score)
        score.split(",")
      else # if match has ended and score is not nil
        match.score.split(",")
      end.map { |s| i += 1; [teams[i].name, s] }.to_h
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