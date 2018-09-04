class Article < ActiveRecord::Base
  attr_accessible :text, :title
  has_many :bomments,dependent: :destroy
  validate :title, presence: true,length:{minimum: 3}
  validate :title, presence: true,length:{minimum: 2}
  def self.search(params)
    articles=Article.where("body LIKE ? or title LIKE ? " "%#{params[:search]}%","%#{params[:search]}%") if params[:search].present?
    article
  end
end
