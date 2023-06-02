# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

sports = [
  ["Basketball", :basketball],
  ["American Football", :football],
  ["Rugby", :rugby],
  ["Field Hockey", :hockey],
  ["Table Tennis", :table_tennis],
  ["Cricket", :cricket],
]

team_names = [
  "Thunderbolts",
  "Dragonslayers",
  "Phoenix Rising",
  "Avalanche",
  "Titans",
  "Vortex Vipers",
  "Spectral Shadows",
  "Blitzkrieg",
  "Fury United",
  "Lightning Strikes",
  "Serpents of Fire",
  "Galaxy Warriors",
  "Stormbreakers",
  "Enigma Enforcers",
  "Blaze Squadron",
  "Phantom Phantoms",
  "Celestial Chargers",
  "Rebel Renegades",
  "Inferno Ignitors",
  "Stealth Strikers",
  "Nova Knights",
  "Crimson Crushers",
  "Rapid Raptors",
  "Shadow Assassins"
]

stadiums = [
  "Victory Park, Triumph City",
  "Emerald Arena, Emeraldville",
  "Thunderdome, Stormville",
  "Royal Stadium, Crownville",
  "Phoenix Field, Blaze City",
  "Legends Park, Mythopolis",
  "Dreamland Stadium, Slumberburg",
  "Liberty Arena, Freedonia",
  "Starlight Stadium, Stardust City",
  "Evergreen Park, Verdantville",
  "Infinity Stadium, Eternity City",
  "Silvermoon Arena, Lunaris",
  "Majestic Park, Regalia",
  "Aurora Stadium, Dawnville",
  "Grand Arena, Metropolis",
  "Diamond Dome, Gemstone City",
  "Serenity Stadium, Tranquil Town",
  "Golden Gate Park, Aurelia",
  "Unity Arena, Concordia",
  "Harmony Stadium, Harmonia",
]

sports.each do |sport|
  Sport.create!(
    name: sport.first,
  ).update!(sport_type: Sport.sport_types[sport.last])
end

def create_teams(team_names)
  sport_id = Sport.first.id
  limit = sport_id + Sport.sport_types.size
  team_names.each_slice(4) do |t_name|
    t_name.each { |n| Team.create!(name: n, sport_id: sport_id) }
    sport_id += 1
    return if sport_id >= limit
  end

end

create_teams(team_names)

def match_story(match)
  file_path = Dir.pwd + "/db/match_descriptions/" <<  match.teams.first.sport.sport_type.to_s << ".txt"
  file_content = File.read(file_path)

  values = {
    "##name" => match.name,
    "##location" => match.location
  }

  values.each do |blank, replacement|
    file_content.gsub!("#{blank}", replacement)
  end
  match.update!(story: file_content)
end

Team.all.order(id: :asc).each_slice(2) do |teams|
  team_1 = teams.first
  team_2 = teams.last
  location = stadiums[rand(stadiums.size)]
  match = Match.create!(
    name: "#{team_1.name} VS #{team_2.name} at #{location}",
    status: Match.statuses[:ended],
    location: location,
    start_at: 2.hours.ago,
    ends_at: Time.now,
  )
  match.teams << teams
  match_story(match)
end

# make two matches as active
Match.all.limit(2).each {|match| match.update!(status: Match.statuses[:running])}

# load articles seeds file
load Rails.root.join('db', 'seeds', 'articles.seeds.rb')
