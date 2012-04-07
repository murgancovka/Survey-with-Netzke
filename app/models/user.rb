class User < ActiveRecord::Base
  has_many :questions
  has_many :respondents
  
  validates_uniqueness_of :username, :message => :uniqueness
  validates_uniqueness_of :email, :message => :uniqueness

  scope :sorted, order(["`username` ASC"])
end
