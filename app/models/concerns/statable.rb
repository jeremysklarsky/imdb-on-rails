module Statable

  module ClassMethods


  end

  module InstanceMethods
    def shows
      self.episodes.collect {|episode| episode.season.show}.uniq
    end

    def show_episodes(show)
      self.episodes.select{|episode| episode.show == show}
    end

    def show_points(show)
      show_episodes(show).collect{|ep| ep.rating}.inject(:+).round(2)
    end

    def show_average(show)
      (show_points(show) / show_episodes(show).size.to_f).round(2)
    end

    def total_points
      if self.episodes.size > 0
        self.episodes.collect {|ep| ep.rating}.inject(:+).round(2)
      else
        0
      end
    end

    def average 
      if self.episodes.size > 0
        (total_points / self.episodes.size.to_f).round(2)
      else
        0
      end
    end

    def episode_count
      self.episodes.size
    end    

  end


end