json.shows @shows.each do |show|
  json.id       show.id
  json.name     show.name
  json.episode_count  show.episodes.size
  json.average  show.average
  json.total_points show.total_points
  json.seasons  show.seasons.size
end