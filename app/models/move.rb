class Move < ActiveRecord::Base

  has_many :workoutmoves, :dependent => :destroy
  has_many :results, :dependent => :destroy
  has_many :movemuscles, :dependent => :destroy
  has_many :workouts, :through => :workoutmoves
  has_many :users, :through => :results
  has_many :muscles, :through => :movemuscles
  has_many :userworkoutmoves
  has_many :userworkouts, :through => :userworkoutmoves
end
