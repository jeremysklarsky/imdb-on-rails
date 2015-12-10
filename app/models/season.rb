class Season < ActiveRecord::Base
  belongs_to :show
  has_many :episodes

  include Statable::InstanceMethods
end
