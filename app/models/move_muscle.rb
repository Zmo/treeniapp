class MoveMuscle < ActiveRecord::Base

  belongs_to :muscle
  belongs_to :move
end
