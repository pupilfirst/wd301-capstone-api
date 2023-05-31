# frozen_string_literal: true
module Matches
  class MatchPresenter < Presenter
    def initialize(match)
      @match = match
    end

    def as_json
      make_match match
    end

    private

    attr_reader :match
  end
end