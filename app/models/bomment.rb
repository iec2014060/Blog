class Bomment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :Commenter, :body
end
