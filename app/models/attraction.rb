class Attraction < ActiveRecord::Base
  has_many :reviews
  belongs_to :client
  attr_accessible :name
end
