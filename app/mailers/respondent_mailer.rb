class RespondentMailer < ActionMailer::Base
  default :to => Respondent.all.map(&:email),
	  :from => "me@vitalizakharoff.com"
  
  def inquiry_notification(inquiry)
    @respondent = inquiry.respondent.email
    @link	= inquiry.answer_form_link
    mail(:subject => "Survey")
  end
end


