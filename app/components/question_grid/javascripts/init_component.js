{
  initComponent: function(params) {
          this.superclass.initComponent.call(this);

          this.on('afterrender', function(self, eOpts) {
              this.getSelectionModel().select(0);
          }, this);

             this.on('select', function(self, record, index, eOpts) {
                Netzke.page.surveyApp.getChildNetzkeComponent('answer_grid').fireEvent('selectform', record.data.id, record.data.text);
          }, this);
      }
}


