class MatchesPresenter
  def self.index(matches)
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

  def self.show(match)
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

  def self.calculate_score(match)
    teams = match.teams
    i = -1
    if match.running?
      LiveScoreHelper.live_score(match).split(",")
    elsif match.score.nil? # if match has ended and score is nil
      score = LiveScoreHelper.random_score
      match.update!(score: score)
      score.split(",")
    else
      # if match has ended and score is not nil
      match.score.split(",")
    end.map { |s| i += 1; [teams[i].name, s] }.to_h
  end

  def self.teams(match)
    match.teams.map do |team|
      {
        id: team.id,
        name: team.name
      }
    end
  end

  def self.sport_name(match)
    match.teams.first.sport.name
  end

  private_class_method :calculate_score, :teams, :sport_name
end
