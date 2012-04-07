class BottomPanel < Netzke::Basepack::Panel

  #js_mixin :init_component

  #action :add,		:icon => :add,		:text => "Add Report",		:height => 34,		:width => 100

  #js_mixin :actions

  def get_bbar
    return ['->', :add.action]
  end

  def configuration
    super.merge(
      	:name           => :bottom_panel,
      	:title          => "Bottom",
      	:prevent_header => true,
      	:border         => false,
	:height         => 38,
      	:align	        => :center,
	:tbar           => get_bbar
    )
  end

  def actions
    super.merge(
      :add => { :text	=> "Create Report!", 	:icon	=> "/images/icons/accept.png",  :height	=> 34 }
    )
  end


end
