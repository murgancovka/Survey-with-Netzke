{
  initComponent: function(params) {
          this.superclass.initComponent.call(this);

           this.store.on('load', function(self, records, successful, operation, eOpts) {
            if ((records) && (records.length > 0)) {
                this.show();
                this.enable();
                  this.getSelectionModel().select(0);
            }else{

                    Ext.Msg.show({
                        title    : 'Error!',
                        msg    : 'No records for this "Form" found!',
                        buttons    : Ext.Msg.OK,
                        icon    : Ext.Msg.ERROR
                    });

                    this.disable();
            }
          }, this);

          this.on('selectform', function(questionId,  questionLabel) {
              var store = this.getStore();
              var proxy = store.getProxy();
              this.show();

              proxy.extraParams.query = Ext.encode([ [ { attr: "question_id", value: questionId, operator: "eq" } ] ]);

            store.load();
            this.setTitle('Answers for \"' + questionLabel + '\"');

          }, this);
      }
}
