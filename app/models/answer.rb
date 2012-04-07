class Answer < ActiveRecord::Base
  belongs_to :inquiry
  belongs_to :question
  has_one :respondent, :through => :inquiry
end
