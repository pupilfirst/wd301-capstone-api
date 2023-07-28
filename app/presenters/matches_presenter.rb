class MatchesPresenter
  def self.index(matches)
    matches.map do |match|
      # Calculate and update score, if match is running.
      calculate_score(match)
      {
        id: match.id,
        name: match.name,
        location: match.location,
        sportName: sport_name(match),
        endsAt: match.ends_at,
        isRunning: match.running?
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

  # Updates score and ends_at, if `running` is true.
  def self.calculate_score(match)
    teams = match.teams
    i = -1
    if match.running?
      LiveScoreHelper.live_score(match).split(',')
    elsif match.score.nil?
      # if match is not running and score is nil, then generate random score
      score = LiveScoreHelper.random_score
      match.update!(score: score)
      score.split(',')
    else
      # if match is not running, then return saved random score
      match.score.split(',')
    end.map do |s|
      i += 1
      [teams[i].name, s]
    end.to_h
  end

  def self.teams(match)
    match.teams.map { |team| { id: team.id, name: team.name } }
  end

  def self.sport_name(match)
    match.teams.first.sport.name
  end

  private_class_method :calculate_score, :teams, :sport_name
end
