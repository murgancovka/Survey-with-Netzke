class Question < ActiveRecord::Base
  has_many :inquiries, :dependent => :destroy
  has_many :answers, :through => :inquiries, :dependent => :destroy
  belongs_to :user

  #validates :text,   :presence => true
end
