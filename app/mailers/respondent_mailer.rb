class RespondentMailer < ActionMailer::Base
  default :to => Respondent.all.map(&:email),
	  :from => "no-reply@estof.net"
  
  def inquiry_notification(inquiry)
    @respondent = inquiry.respondent.email
    @link	= inquiry.answer_form_link
    mail(:subject => "Hello, #{@respondent}, Please take survey!")
  end
end


