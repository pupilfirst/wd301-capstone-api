# frozen_string_literal: true

class LiveScoreHelper
  private

  def self.seed_time
    [rand(20), rand(20)] # value in minutes
  end

  def self.map_range(value, old_min, old_max, new_min, new_max)
    # Calculate the normalized value
    normalized_value = (value.to_f - old_min.to_f) / (old_max.to_f - old_min.to_f)
    # Map the normalized value to the new range
    (normalized_value.to_f * (new_max.to_f - new_min)) + new_min
  end

  def self.check_timing(match)
    if match.ends_at < DateTime.now
      # create new timing
      match.update(start_at: DateTime.now, ends_at: DateTime.now + 2.hours)
    end
  end

  def self.saved_seed(match)
    score = match.score
    seed = seed_time
    if score
      score.split(",").map { |s| s.to_i }
    else
      match.update!(score: "#{seed.first}, #{seed.last}")
      seed
    end
  end

  public

  def self.random_score
    seed = seed_time
    new_score = [
      map_range(seed.first, 0, 120, 0, 15).to_i,
      map_range(seed.last, 0, 120, 0, 15).to_i
    ]
    "#{new_score.first},#{new_score.last}"
  end

  def self.live_score(match)
    check_timing(match)
    time_elapsed = (Time.now - match.start_at) / 60
    seeds = saved_seed(match)
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
    s1 = map_range(time_elapsed + seeds.first, 0, 120, 0, new_max).to_i.to_s
    s2 = map_range(time_elapsed + seeds.last, 0, 120, 0, new_max).to_i.to_s
    "#{s1},#{s2}"
  end
end
