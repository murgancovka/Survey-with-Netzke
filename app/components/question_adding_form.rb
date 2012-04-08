class QuestionAddingForm < Netzke::Basepack::FormPanel

  js_mixin :actions
  js_mixin :init_component

  def get_bbar
	return ['->', :cancel.action, '-', :apply.action]
  end

  action :apply,  :text => "Add Question", 	:icon => "/images/icons/accept.png", 	:height => 30
  action :cancel, :text => "Cancel", 		:icon => "/images/icons/cancel.png", 	:height => 30

  def configuration
    super.merge(
	  	:name			=> :question_adding_form,
	  	:title			=> 'QuestionAddingForm',
		:prevent_header		=> true,
		:border 		=> false,
	  	:model	 		=> "Question",
	  	:items 			=> [{ 
			:name 		  => :text, 	
			:xtype 		  => :textarea, 		
			:height 	  => 300,	
			:allow_blank      => false,
		}
],
		:bbar			  => get_bbar
	)
  end


  endpoint :apply do |params|
  	success = false
	respondents  = Respondent.is_active
	question     = Question.create(:user_id=>session[:user].id,:text=>params[:text],:security_token=>Digest::SHA1.hexdigest(rand(1000000).to_s), :is_active=>1, :is_deleted=>0)
  	   if question
		respondents.each do |r|
			inquiry = Inquiry.create(:question_id=>question.id,:respondent_id=>r.id,:is_answered=>0)
			RespondentMailer.inquiry_notification(inquiry).deliver
			success = true
		end
           end


	{ :set_result => success }
  end  

end
