class RespondentWindow < Netzke::Basepack::Window

  def configuration
    super.merge(
      :name 		=> :respondent_window,
      :title 		=> "::Respondents::",
      :layout 		=> :border,
      :border		=> false,
      :width 		=> 500,
      :height 		=> 500,
      :y 		=> 50,
      :modal 		=> true,
      :close_action 	=> :hide,
      :resizable 	=> false,
      :items 		=> [
        :respondent_grid.component(
          :name 	=> :respondent_grid,
          :region 	=> :center,
          :class_name 	=> "RespondentGrid"
        )
      ]
    )
  end

end
