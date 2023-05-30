# frozen_string_literal: true

module Teams

  class TeamsPresenter < Presenter
    def initialize(teams)
      @teams = teams
    end

    def as_json
      teams.map do |team|
        make_team team
      end
    end

    attr_reader :teams
  end
end

