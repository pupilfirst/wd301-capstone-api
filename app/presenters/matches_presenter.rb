class MatchesPresenter

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

  def calculate_score(match)
    if match.running?
      # TODO: make score service
      "3-5" # calculate actual score based on time
    else
      "3-9" # TODO: remove this and store this score for ended matches
    end
  end

  def teams(match)
    match.teams.map do |team|
      {
        id: team.id,
        name: team.name
      }
    end
  end

  def sport_name(match)
    match.teams.first.sport.name
  end

  attr_reader :matches
end