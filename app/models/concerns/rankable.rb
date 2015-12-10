module Rankable

  module ClassMethods
    def self.all_time_points
      self.all.sort_by {|resource|resource.total_points}.reverse
    end

    def self.all_time_average
      self.all.sort_by {|resource|resource.average}.reverse
    end

    def self.print_all_time_averages
      stats = Hash.new { |hash, key| hash[key] = {}  }
      self.all.each do |resource|
        stats[resource.name][:average] = resource.average
        stats[resource.name][:average_rank] = resource.average_rank
        stats[resource.name][:total_points] = resource.total_points
        stats[resource.name][:episode_count] = resource.episode_count
      end
      puts stats.sort_by {|k,v|v[:average]}.reverse
    end

    def self.print_all_time_points
      stats = Hash.new { |hash, key| hash[key] = {}  }
      self.all.each do |resource|
        stats[resource.name][:average] = resource.average
        stats[resource.name][:average_rank] = resource.average_rank
        stats[resource.name][:total_points] = resource.total_points
        stats[resource.name][:episode_count] = resource.episode_count
      end
      puts stats.sort_by {|k,v|v[:total_points]}.reverse

    end

  end

  module InstanceMethods
    def total_points
      if self.episodes.size > 0
        self.episodes.collect {|ep| ep.points}.inject(:+)
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

    def print_episodes
      self.episodes.sort_by {|ep| ep.ranking}.each do |ep|
        puts "Title: #{ep.title}, Rank: #{ep.ranking}"
      end
    end

    def episode_count
      self.episodes.size
    end

    def average_rank
      168 - self.average
    end
  end


end