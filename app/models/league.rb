class League < ActiveRecord::Base
  attr_accessible :name

  has_many :schools
end
