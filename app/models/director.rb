class Director < ActiveRecord::Base
  has_many :episodes
  
  include Statable::InstanceMethods

end
