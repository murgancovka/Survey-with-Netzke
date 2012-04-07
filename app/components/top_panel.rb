class TopPanel < Netzke::Basepack::Panel

  action :create, 		:icon => :add, 		:text => "Create Question"
  action :show_respondent, 	:icon => :user, 	:text => "Respondents"
  action :show_user, 		:icon => :user_suit, 	:text => "Users"
  action :show_help, 		:icon => :help, 	:text => "Help"
  action :logout, 		:icon => :door_out, 	:text => "Logout"

  js_mixin :actions

  def get_bbar
      return [:create.action, "-", :show_respondent.action, "-", :show_user.action, "->", :show_help.action, :logout.action]
  end

  def configuration
    super.merge(
      :name 		=> :top_panel,
      :prevent_header 	=> true,
      :height 		=> 38,
      :border 		=> true,
      :frame 		=> true,
      :bbar 		=> get_bbar
    )
  end

end
