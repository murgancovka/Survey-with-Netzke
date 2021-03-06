{
	  onApply: function(params) {
		var form = this.getForm();
			if (form.isValid()){
				Ext.MessageBox.confirm('Warning', 'Are you sure?', function(btn){
					if(btn == "yes"){
						this.apply(form.getFieldValues(), function(success) { 
							if (success) {
                                                            Ext.Msg.show({ 
									title	: 'Success', 
									msg	: "Wait for redirecting...",
									buttons	: Ext.Msg.OK, 
									icon	: Ext.Msg.INFO
								});
								 window.location = '/';
							}else{
								Ext.Msg.show({ 
									title	: 'FAIL', 
									msg	: "Fill all fields :)",
									buttons	: Ext.Msg.OK, 
									icon	: Ext.Msg.ERROR
								});
							}
						}, this);
					}

				}, this);
			}else{
				Ext.MessageBox.alert('::ERROR::', 'Please fill the fields!');
			}
	},

	onCancel: function(params) {
		 window.location = '/';
	}

}


