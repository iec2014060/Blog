class Comment < ActiveRecord::Base
  belongs_to :artcile
  attr_accessible :body, :commenter
end
