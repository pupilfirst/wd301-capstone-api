# frozen_string_literal: true

module Matches
  class ScorePresenter < Presenter
    def initialize(match)
      @match = match
    end

    def as_json
      {
        matchName: match.name,
        matchId: match.id,
        score: calculate_score(match)
      }
    end

    private

    attr_reader :match
  end
end