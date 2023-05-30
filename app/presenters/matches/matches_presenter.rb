module Matches
  class MatchesPresenter < Presenter

    def initialize(matches)
      @matches = matches
    end

    def as_json
      # binding.irb
      matches.map do |match|
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
    end

    private

    attr_reader :matches
  end
end