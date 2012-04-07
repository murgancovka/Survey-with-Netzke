class TopAnswerPanel < Netzke::Basepack::Panel

  def get_bbar
      inquiry = Inquiry.find(:first, :conditions => { :id => session[:inquiry_id] })
      return "Question is <b>#{inquiry.question.text}</b>"
  end

  def configuration
    super.merge(
      :name 		=> :top_panel,
      :prevent_header 	=> true,
      :border 		=> false,
      :frame 		=> true,
      :bbar 		=> get_bbar
    )
  end

end
