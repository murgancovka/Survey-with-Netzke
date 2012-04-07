class RespondentGrid < Netzke::Basepack::GridPanel

  action :add_in_form, 	:text => "Add", 	:tooltip => "Add respondent"
  action :edit_in_form, :text => "Edit", 	:tooltip => "Edit respondent"

  def configuration
    column_defaults = Hash.new
    column_defaults[:editable] 		= false
    column_defaults[:sortable] 		= false
    column_defaults[:menu_disabled] 	= true
    column_defaults[:resizable] 	= false
    column_defaults[:draggable] 	= false
    column_defaults[:fixed] 		= true

    super.merge(
      :name 		=> :respondent_grid,
      :title 		=> "::Respondents::",
      :prevent_header	=> true,
      :model 		=> "Respondent",
      :scope 		=> :is_active,
      :border 		=> true,
      :context_menu 	=> [:edit_in_form.action, :del.action],
      :tbar 		=> [:add_in_form.action],
      :bbar 		=> [],
      :tools 		=> false,
      :multi_select 	=> false,
      :columns 		=> [
        column_defaults.merge(:name => :email, :text => "Email", :flex => true),
        column_defaults.merge(:name => :is_active, :text => "Enabled?", :width => 80, :align => :center)
      ]
    )
  end

end
