class UserWorkout < ActiveRecord::Base

  validates_length_of :title, :minimum => 2
  validates_length_of :type, :minimum => 2

  belongs_to :user
  has_many :moves, :through => :userworkoutmoves
  has_many :userworkoutmoves
end
