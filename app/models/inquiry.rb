class Inquiry < ActiveRecord::Base
  belongs_to :question
  belongs_to :respondent
  has_one :answer, :dependent => :destroy

  scope :answer, joins(:answer).select([
    "`answers`.*",
    "`answers`.`text`"])

  def answer_form_link
    return "http://#{RAILS_HOST}/main/form?inquiry_id=#{self.id.to_s}"
  end

end
