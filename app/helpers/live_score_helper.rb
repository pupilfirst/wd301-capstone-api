# frozen_string_literal: true

module LiveScoreHelper
  private

  def self.random_elapsed_time
    [rand(20), rand(20)] # value in minutes
  end

  def self.map_range(value, old_min, old_max, new_min, new_max)
    # Calculate the normalized value
    normalized_value = (value.to_f - old_min.to_f) / (old_max.to_f - old_min.to_f)
    # Map the normalized value to the new range
    (normalized_value.to_f * (new_max.to_f - new_min)) + new_min
  end

  def self.check_timing(match)
    # Check if the match has ended,
    # given that this will get only called when match is running
    if match.ends_at < DateTime.now
      # create new timing
      match.update(start_at: DateTime.now, ends_at: DateTime.now + 2.hours)
    end
  end

  def self.saved_random_et(match)
    # This function is kind of a hack
    # We're storing random elapsed time for, running matches only
    score = match.score
    # We're adding randomness, because we've two scores and one change variable (time)
    random_et = random_elapsed_time
    if score
      # Get old elapsed time
      score.split(",").map { |s| s.to_i }
    else
      # Save random elapsed time for later
      match.update!(score: "#{random_et.first}, #{random_et.last}")
      random_et
    end
  end

  public

  def self.random_score
    random_et = random_elapsed_time
    new_score = [
      map_range(random_et.first, 0, 120, 0, 15).to_i,
      map_range(random_et.last, 0, 120, 0, 15).to_i
    ]
    "#{new_score.first},#{new_score.last}"
  end

  def self.live_score(match)
    check_timing(match)
    time_elapsed = (Time.now - match.start_at) / 60

    # Get previously generated "initial elapsed time"
    random_et_1, random_et_2 = saved_random_et(match)

    sport_type = match.teams.first.sport.sport_type
    new_max = case sport_type
              when Sport.sport_types[:cricket]
                300
              when Sport.sport_types[:basketball]
                120
              when Sport.sport_types[:table_tennis]
                11
              when Sport.sport_types[:rugby]
                25
              else
                15
              end
    s1 = map_range(time_elapsed + random_et_1, 0, 120, 0, new_max).to_i.to_s
    s2 = map_range(time_elapsed + random_et_2, 0, 120, 0, new_max).to_i.to_s
    "#{s1},#{s2}"
  end
end
