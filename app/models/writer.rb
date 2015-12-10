class Writer < ActiveRecord::Base
  has_many :episode_writers
  has_many :episodes, through: :episode_writers


  def total_points
    if self.episodes.size > 0
      self.episodes.collect {|ep| ep.rating}.inject(:+).round(2)
    else
      0
    end
  end

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

  def average 
    if self.episodes.size > 0
      (total_points / self.episodes.size.to_f).round(2)
    else
      0
    end
  end

  # def print_episodes
  #   self.episodes.sort_by {|ep| ep.ranking}.each do |ep|
  #     puts "Title: #{ep.title}, Rank: #{ep.ranking}"
  #   end
  # end

  def episode_count
    self.episodes.size
  end

  # def self.all_time_points
  #   Writer.all.sort_by {|writer|writer.total_points}.reverse
  # end

  # def self.all_time_average
  #   Writer.all.sort_by {|writer|writer.average}.reverse
  # end

  # def self.print_all_time_averages
  #   stats = Hash.new { |hash, key| hash[key] = {}  }
  #   Writer.all.each do |writer|
  #     stats[writer.name][:average] = writer.average
  #     stats[writer.name][:average_rank] = writer.average_rank
  #     stats[writer.name][:total_points] = writer.total_points
  #     stats[writer.name][:episode_count] = writer.episode_count
  #   end
  #   puts stats.sort_by {|k,v|v[:average]}.reverse
  # end

  # def self.print_all_time_points
  #   stats = Hash.new { |hash, key| hash[key] = {}  }
  #   Writer.all.each do |writer|
  #     stats[writer.name][:average] = writer.average
  #     stats[writer.name][:average_rank] = writer.average_rank
  #     stats[writer.name][:total_points] = writer.total_points
  #     stats[writer.name][:episode_count] = writer.episode_count
  #   end
  #   puts stats.sort_by {|k,v|v[:total_points]}.reverse

  # end


end
