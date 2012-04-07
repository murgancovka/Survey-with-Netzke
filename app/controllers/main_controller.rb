class MainController < ApplicationController
  
  before_filter :user_authenticated?, :except => :answer

  def index
  end

  def adding_question
  end

  def ty
    reset_session
  end

  def answer
	inquiry_id	     = params[:inquiry_id].to_i
	inquiry		     = Inquiry.find(:first, :conditions => { :id => inquiry_id })		
	answer		     = Answer.find(:first, :conditions => { :inquiry_id => inquiry_id })
	session[:inquiry_id] = inquiry_id

	if !answer
		if inquiry
		  if inquiry_id != inquiry.id
	 	  render :text => "Error!"
	      	  return false
		  end
		else
		  render :text => "Error!"
	      	  return false
		end
	else
	  render :text => "Answer has already in database!"
	  return false
	end
  end
end
