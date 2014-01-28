class Review < ActiveRecord::Base
  belongs_to :attraction
  attr_accessible :review, :reviewer
end
