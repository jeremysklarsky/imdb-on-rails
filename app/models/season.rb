class Season < ActiveRecord::Base
  belongs_to :show
  has_many :episodes

  def total_points
    self.episodes.collect {|episode| episode.points}.inject(:+)
  end

  def average 
    (total_points / self.episodes.size.to_f).round(2)
  end

  def average_rank
    168 - self.average
  end
end