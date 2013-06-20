class School < ActiveRecord::Base
  attr_accessible :big_game, :content, :division, 
  				  :globe_rank, :herald_rank, :highly_recruited, 
  				  :latitude, :longitude, :losses, :name, 
  				  :pts_against, :pts_for, :wins, :league_id

  belongs_to :league
  has_one :advertiser

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_address
   "#{name}, #{state}"
  end
end
