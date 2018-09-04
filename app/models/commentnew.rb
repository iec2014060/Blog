class Commentnew < ActiveRecord::Base
  belongs_to :article
  attr_accessible :Commenter, :body
end
