# frozen_string_literal: true
module Matches
  class MatchPresenter < Presenter
    def initialize(match)
      @match = match
    end

    def as_json
      {
        id: match.id,
        status: match.status,
        name: match.name,
        location: match.location,
        starts_at: match.start_at,
        ends_at: match.ends_at,
        score: calculate_score(match),
        teams: teams(match),
        sport_name: sport_name(match),
        playing_team: match.teams.first.id,
        story: match.story
      }
    end

    private

    attr_reader :match
  end
end