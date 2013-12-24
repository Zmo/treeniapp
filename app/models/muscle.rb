class Muscle < ActiveRecord::Base

  has_many :movemuscles, :dependent => :destroy
  has_many :moves, :through => :movemuscles
end
