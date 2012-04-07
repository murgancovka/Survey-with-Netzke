class BottomPanel < Netzke::Basepack::Panel

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
