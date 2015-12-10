json.shows @shows.each do |show|
  json.id       show.id
  json.name     show.name
  json.seasons  show.seasons
end