class Subscriber < ActiveRecord::Base
  attr_accessible :f_name,:l_name,:email,:country
  validates :f_name,:l_name,:email,:country,presence:true
end
