json.name         @writer.name
json.total_points @writer.total_points
json.average      @writer.average
json.shows        @writer.shows.each do |show|
  json.name       show.name
  json.count      @writer.show_episodes(show).size
  json.total_points @writer.show_points(show)
  json.average    @writer.show_average(show)
end
json.count        @writer.episode_count
json.episodes     @writer.episodes.each do |episode|
  json.show       episode.show.name
  json.showID     episode.show.id
  json.title      episode.title
  json.season     episode.season.number
  json.rating     episode.rating
  json.director   episode.director
  json.all_writers episode.writers
  json.imdb_id  episode.imdbID
end