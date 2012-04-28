class AnswerForm < Netzke::Basepack::FormPanel

  js_mixin :actions
  js_mixin :init_component

  def get_bbar
	return ['->', :apply.action]
  end

  action :apply,  :text => "Add Answer", 	:icon => "/images/icons/accept.png", 	:height => 30

  def configuration
    super.merge(
	  	:name			=> :answer_form,
		:prevent_header		=> true,
		:border 		=> false,
	  	:model	 		=> "Answer",
	  	:items 			=> [{ 
			:name 		  => :text,
			:field_label	  => "Answer", 	
			:xtype 		  => :textarea, 		
			:height 	  => 300,	
			:allow_blank      => false,
		}],
		:bbar			  => get_bbar
	)
  end


  endpoint :apply do |params|
  	success 	= false
	inquiry		= Inquiry.find(:first, :conditions => { :id => session[:inquiry_id] })
	answer		= Answer.create(:inquiry_id => session[:inquiry_id], :text => params[:text])
  	   if answer
		inquiry.update_attributes(:is_answered => 1)
		success = true
           end

	{ :set_result => success }
  end  

end
