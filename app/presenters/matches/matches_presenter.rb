module Matches
  class MatchesPresenter < Presenter

    def initialize(matches)
      @matches = matches
    end

    def as_json
      # binding.irb
      matches.map do |match|
        make_match match
      end
    end

    private

    attr_reader :matches
  end
end