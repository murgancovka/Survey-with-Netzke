class QuestionGrid < Netzke::Basepack::GridPanel

  js_mixin :init_component

	def get_bbar
		return [:edit.action]
	end

	def configuration
		column_defaults = Hash.new
		column_defaults[:editable]      = true
		column_defaults[:sortable]      = false
		column_defaults[:menu_disabled] = true
		column_defaults[:resizable]     = false
		column_defaults[:draggable]     = false
		column_defaults[:fixed]         = false
		column_defaults[:filterable]    = false
		column_defaults[:flex] 	        = 1

		super.merge(
			:name			=> :question_grid,
			:prevent_header 	=> false,
			:title			=> "Questions",
			:model 			=> "Question",
			:columns 		=> [
				column_defaults.merge(:name => :text, :label => "Question", :width => 300)
			],
			:bbar			  => get_bbar
		)
	end
end


