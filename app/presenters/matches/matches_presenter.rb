module Matches
  class MatchesPresenter < Presenter

    def initialize(matches)
      @matches = matches
    end

    def as_json
      matches.map do |match|
        {
          id: match.id,
          name: match.name,
          location: match.location,
          sportName: sport_name(match),
          endsAt: match.ends_at
        }
      end
    end

    private

    attr_reader :matches
  end
end