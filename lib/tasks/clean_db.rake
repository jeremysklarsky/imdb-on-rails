class DB_Cleaner

  def call
    Episode.all.each do |ep|
      if !ep.season_id
        ep.destroy
      end  
    end

    Season.all.each do |season|
      if season.episodes.size == 0
        season.destroy
      end
    end
  end

end