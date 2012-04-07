class AnswerGrid < Netzke::Basepack::GridPanel

	js_mixin :init_component

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
			:name			=> :answer_grid,
			:enable_column_filters  => false,
			:prevent_header 	=> false,
			:title			=> "Answers",
			:bbar			=> nil,
			:scope			=> :answer,
			#:scope			=> { :is_answered => 1 },
			:model 			=> "Inquiry",
			:columns 		=> [
				column_defaults.merge(:name => :text, :label => "Answer", :width => 300)
			],

		)
	end


end


