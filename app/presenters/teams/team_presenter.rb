# frozen_string_literal: true

module Teams

  class TeamPresenter < Presenter
    def initialize(team)
      @team = team
    end

    def as_json
      make_team team
    end

    private

    attr_reader :team
  end
end