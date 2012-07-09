{
  initComponent: function(params) {
          this.superclass.initComponent.call(this);
	  
	  this.selectedQuestionId = 0;

          this.on('afterrender', function(self, eOpts) {
              answer_grid = Netzke.page.surveyApp.getChildNetzkeComponent('answer_grid')
	      this.getStore().load();
	      
	     // this.selModel = new Ext.grid.RowSelectionModel({singleSelect:true});
              //Netzke.classes.surveyApp.superclass.initComponent.call(this);
	    
          }, this);

	 this.getStore().on('load', function(self, records, successful, operation, eOpts) {
		 if ((records) && (records.length > 0)) {
			this.getSelectionModel().select(0);
		}
	}, this);

            this.on('select', function(self, record, index, eOpts) {
                answer_grid.fireEvent('selectform', record.data.id, record.data.text);
          }, this);
      }
}