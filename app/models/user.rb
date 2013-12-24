class User < ActiveRecord::Base

  has_secure_password

  validates_uniqueness_of :name
  validates_length_of :name, :minimum => 3, :maximum => 15
  validates_length_of :password, :minimum => 4

  has_many :results, :dependent => :destroy
  has_many :moves, :through => :results
  has_many :goals, :dependent => :destroy
  has_many :userworkouts, :dependent => :destroy
  has_many :userworkoutmoves, :through => :userworkouts, :dependent => :destroy
end
