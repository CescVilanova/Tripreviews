class Client < ActiveRecord::Base
  has_many :attractions
  attr_accessible :name
end
