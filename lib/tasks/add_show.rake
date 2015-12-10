class AddShow

  def initialize(show)
    @name = show
  end

  def call    
    if !Show.find_by(:name => @name)
      @show = Show.create(:name => @name)
      IMDB_Writers.new(@show).call
      DB_Cleaner.new.call
    else
      puts 'already in database'
    end

  end
end