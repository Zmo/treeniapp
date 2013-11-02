class Person < ActiveRecord::Base
  has_many :workouts, :dependent => :destroy
  has_many :goals, :dependent => :destroy
end
