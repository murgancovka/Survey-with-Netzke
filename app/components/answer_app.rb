class AnswerApp < Netzke::Basepack::BorderLayoutPanel
  
  js_mixin :init_component
  
  def configuration
    super.merge(
      :name 		=> :survey_app,
      :border		=> false,
      :prevent_header 	=> true,
      :layout 		=> :border,
      :items 		=> [
        :top_answer_panel.component(
          :name 	=> :top_answer_panel,
          :region 	=> :north,
          :class_name 	=> "TopAnswerPanel",
          :margin 	=> "2 2 2 2"
        ),
        :answer_form.component(
          :name 	=> :answer_form,
          :region 	=> :center,
          :width 	=> "50%",
          :class_name 	=> "AnswerForm",
	  :margin     	=> "2 2 2 2"
        )
      ]
    )
  end
end
