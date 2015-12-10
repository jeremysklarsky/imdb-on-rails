class Season < ActiveRecord::Base
  belongs_to :show
  has_many :episodes

  def total_points
    self.episodes.collect {|episode| episode.rating}.inject(:+)
  end

  def average 
    (total_points / self.episodes.size.to_f).round(2)
  end
end
