module Matches
  class MatchesPresenter < Presenter

    def initialize(matches)
      @matches = matches
    end

    def as_json
      matches.map do |match|
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
    end

    private

    attr_reader :matches
  end
end