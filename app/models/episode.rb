class Episode < ActiveRecord::Base
  belongs_to :season
  belongs_to :director

  has_many :episode_writers
  has_many :writers, through: :episode_writers

  def show
    self.season.show
  end

end
