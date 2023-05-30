# frozen_string_literal: true
module Matches
  class MatchPresenter < Presenter
    def initialize(match)
      @match = match
    end

    def as_json
      {
        id: match.id,
        isRunning: match.running?,
        name: match.name,
        location: match.location,
        startsAt: match.start_at,
        endsAt: match.ends_at,
        score: calculate_score(match),
        teams: teams(match),
        sportName: sport_name(match),
        playingTeam: match.teams.first.id,
        story: match.story
      }
    end

    private

    attr_reader :match
  end
end