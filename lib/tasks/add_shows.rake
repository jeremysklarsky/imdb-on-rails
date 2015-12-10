class IMDB_Writers

  API_BASE = 'http://www.omdbapi.com/'
  EPISODE_EXTENSTION = '?i='
  attr_accessor :seasons, :stats, :seasons_url, :show_name, :show

  def initialize(show)
    @show = show
    @show_name = URI.escape(show.name)
    @seasons_url = API_BASE + '?t=' + @show_name + '&Season='
    call
  end

  # def custom_hash
  #   Hash.new { |h, k| h[k] = {:episodes => [], :stats => {}} }
  # end

  def call
    gather_seasons
    # make_averages
    # gather_episode_urls
    # build_writers
    # build_writer_stats
  end

  def gather_seasons
    found = true
    i = 1
    while found do
      url = seasons_url + (i).to_s
        response = Unirest.get(url, headers: {"Accept" => "application/json"})
      if response.body["Response"] == "True"
        @season = Season.new
        @season.show = @show
        @season.number = response.body["Season"].to_i
        @season.save
        response.body['Episodes'].each do |episode|
          build_episode(episode)
        end
        i += 1
      else
        found = false
      end
    end
  end

  def build_episode(episode)
    @episode = Episode.find_or_create_by(:imdbID => episode["imdbID"])
    @episode.title = episode['Title']
    @episode.rating = episode['imdbRating'].to_f
    @episode.season = @season
    
    url = @episode.imdbID
    response = Unirest.get(API_BASE + EPISODE_EXTENSTION + url, headers: {"Accept" => "application/json"})
    ep_writers = response.body["Writer"].split(', ').
                 reject{|writer| writer.include?('created') ||
                                 writer.include?('created by') ||
                                 writer.include?('Ice') ||
                                 writer.include?('editor') ||
                                 writer.include?('story') ||
                                 writer.include?('developed') ||
                                 writer.include?('Executive')}.
                 collect{|w| w.split(' (')[0]}.uniq
      
      director = response.body["Director"]

      ep_writers.each do |writer|
        # writers[writer.split(' (')[0]][:episodes].push(episode)
          @writer = Writer.find_or_create_by(:name => writer)
          @episode.writers << @writer if !@episode.writers.include?(@writer)
      end

      @director = Director.find_or_create_by(:name => director)
      @director.episodes << @episode
    @episode.save
  end
  # def make_averages    
  #   seasons.each do |season, values|
  #     episodes = values[:episodes]
  #     stats[season][:avg]= (episodes.collect {|e| e[:rating].to_f}.inject(:+) / episodes.size).round(2)
  #     stats[season][:total] = (episodes.collect {|e| e[:rating].to_f}.inject(:+)).round(2)
  #   end
  # end 

  # def gather_episode_urls
    # seasons.each do |season, values|
    #   values[:episodes].each do |episode|
    #     episodes.push(episode[:id])
    #   end
    # end
  # end

  def sort_stats
    stats.sort_by {|k,v| v[:avg]}.reverse.to_h
  end  

  def build_writers
    @show.episodes.each do |episode|
      @episode = episode
      url = @episode.imdbID
      response = Unirest.get(API_BASE + EPISODE_EXTENSTION + url, headers: {"Accept" => "application/json"})
      ep_writers = response.body["Writer"].split(', ').
                   reject{|writer| writer.include?('created') ||
                                   writer.include?('created by') ||
                                   writer.include?('editor') ||
                                   writer.include?('story') ||
                                   writer.include?('developed') ||
                                   writer.include?('Executive')}.
                   collect{|w| w.split(' (')[0]}.uniq
      director = response.body["Director"]

      ep_writers.each do |writer|
        # writers[writer.split(' (')[0]][:episodes].push(episode)
          @writer = Writer.find_or_create_by(:name => writer)
          @episode.writers << @writer if !@episode.writers.include?(@writer)
      end

      @director = Director.find_or_create_by(:name => director)
      @director.episodes << @episode
      @episode.save

    end
  end

  # def build_writer_stats
  # end

  # def find_episode(url)
  #   seasons.collect{|k,v| v[:episodes]}.flatten.select{|k| k[:id] == url}.first
  # end

end