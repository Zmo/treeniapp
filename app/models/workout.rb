class Workout < ActiveRecord::Base

  has_many :workoutmoves, :dependent => :destroy
  has_many :moves, :through => :workoutmoves
end
