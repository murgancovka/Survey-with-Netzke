class SurveyApp < Netzke::Basepack::BorderLayoutPanel
  
  js_mixin :init_component

  def configuration
    super.merge(
      :name 		=> :survey_app,
      :border		=> false,
      :prevent_header 	=> true,
      :layout 		=> :border,
      :items 		=> [
        :top_panel.component(
          :name 	=> :top_panel,
          :region 	=> :north,
          :class_name 	=> "TopPanel",
          :margin 	=> "2 2 2 2"
        ),
        :question_grid.component(
          :name 	=> :question_grid,
          :region 	=> :west,
          :width 	=> "50%",
          :class_name 	=> "QuestionGrid",
	  :margin     	=> "2 2 2 2"
        ),
	:answer_grid.component(
          :name 	=> :answer_grid,
          :region 	=> :center,
	  :width 	=> "50%",
          :class_name 	=> "AnswerGrid",
	  :margin     	=> "2 2 2 2"
        )
      ]
    )
  end
end
