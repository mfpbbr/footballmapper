class Advertiser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :advertisement, :business_name, :city, :last_name, :first_name, :state, :street, :url, :zipcode, :school_id

  belongs_to :school

  acts_as_gmappable 

  def gmaps4rails_address
   "#{city}, #{state}"
  end

  def school
    School.advertiser
  end

end
