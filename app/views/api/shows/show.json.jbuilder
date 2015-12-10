json.name         @show.name
json.seasons      @show.seasons.each do |season|
  json.season     season.number
  json.average    season.average
  json.total_points season.total_points
  json.count      season.episodes.size
  json.episodes   season.episodes.each do |episode|
    json.title    episode.title
    json.rating   episode.rating
    json.writers  episode.writers
    json.director episode.director
    json.imdb_id  episode.imdbID
  end
end
json.writers      @show.writers.each do |writer|
  json.name       writer.name
  json.count      writer.show_episodes(@show).size
  json.total      writer.show_points(@show)
  json.average    writer.show_average(@show)
end
json.directors    @show.directors.each do |director|
  json.name       director.name
  json.count      director.show_episodes(@show).size
  json.total      director.show_points(@show)
  json.average    director.show_average(@show)

end
