class Inquiry < ActiveRecord::Base
  belongs_to :question
  belongs_to :respondent
  has_one :answer, :dependent => :destroy

  scope :answer, joins(:answer).select([
    "`answers`.*",
    "`answers`.`text`"])
  
  def security_token
    return self.question.security_token
  end
  
  def answer_form_link
    return "http://#{RAILS_HOST}/main/answer?inquiry_id=#{self.id.to_s}&inquiry_security_token=#{self.question.security_token.to_s}"       
  end

end
