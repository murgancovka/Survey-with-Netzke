class UserWindow < Netzke::Basepack::Window

  def configuration
    super.merge(
      :name 		=> :user_window,
      :title 		=> "::Users::",
      :layout 		=> :border,
      :border		=> false,
      :width 		=> 500,
      :height 		=> 500,
      :y 		=> 50,
      :modal 		=> true,
      :close_action 	=> :hide,
      :resizable 	=> false,
      :items 		=> [
        :user_grid.component(
          :name 	=> :user_grid,
          :region 	=> :center,
          :class_name 	=> "UserGrid"
        )
      ]
    )
  end

end
