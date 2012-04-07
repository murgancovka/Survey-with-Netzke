class Respondent < ActiveRecord::Base
  has_many :inquiries, :dependent => :destroy
  has_many :questions, :through => :inquiries
  belongs_to :user
  belongs_to :respondent_group
  
  scope :is_active, :conditions => { :is_active => true }
end
