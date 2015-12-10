class Show < ActiveRecord::Base
  has_many :seasons
  has_many :episodes, :through => :seasons
  has_many :writers,  -> { uniq }, :through => :episodes
  has_many :directors,  -> { uniq }, :through => :episodes

  def self.find_by_slug(params)
    self.find(params)
  end

  def directors
    self.episodes.collect {|ep| ep.director}.uniq
  end

end
