class UserWorkoutMove < ActiveRecord::Base

  belongs_to :move
  belongs_to :userworkout
end
