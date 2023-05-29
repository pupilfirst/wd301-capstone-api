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
        story: match.story
      }
    end
  end

  private

  def calculate_score(match)
    if match.status == Match.statuses[:active]
      "3-5" # calculate actual score based on time
    end
    # TODO: make score service
    "3-9" #TODO: remove this and
  end

  def teams(match)
    match.teams.map do |team|
      {
        id: team.id,
        name: team.name
      }
    end
  end
  attr_reader :matches
end