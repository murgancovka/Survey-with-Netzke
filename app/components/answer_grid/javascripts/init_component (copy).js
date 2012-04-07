{
  initComponent: function(params) {
	  	this.superclass.initComponent.call(this);


	function pctChange(val) {
        if (val > 0) {
            return '<span style="color:green;">' + val + '%</span>';
        } else if (val < 0) {
            return '<span style="color:red;">' + val + '%</span>';
        }
        return val;
    }

//
	//	this.filterSearchMessage	= this.filterTbar.getComponent('percent_money');
/*
		this.on('afterrender', function(self, records, successful, eOpts) {
	  		//this.getSelectionModel().select(0);
			var grid = this.grid;
			//grid.first().get('0')

			
			

	  	}, this);
*/


/*
		this.getView().on('itemclick', function(self, record, item, index, e, eOpts) {
				var selectedSchools = this.getSelectionModel().getSelection();
				for (i in selectedSchools) {
  					console.log(schools[i].get('id'));  
				}
		}, this);

		this.on('afterrender', function(self, record, index, eOpts) {

		var reportGrid = this.grid;

*/
/*
var selected = this.getSelectionModel().getCount();
    if (selected < 1){
	//alert(this.getSelectionModel().getSelected().get('percent_money'));
    } else {
 Ext.Msg.show({
	title:'',
	msg: 'Hey! Select a record first!',
	buttons: Ext.Msg.OK,
	icon: Ext.MessageBox.WARNING
      });
   }
 */





	  	}, this);

/*
	 	  this.store.on('load', function(self, records, successful, operation, eOpts) {
			if ((records) && (records.length > 0)) {				
				this.show();
				this.enable();
	  			this.getSelectionModel().select(0);
			}else{

					Ext.Msg.show({ 
						title	: 'Error!', 
						msg		: 'No records for this "Form" found!', 
						buttons	: Ext.Msg.OK, 
						icon	: Ext.Msg.ERROR 
					});

					this.disable();
			}
	  	}, this);

	  	this.on('selectform', function(formId, formLabel) {
	  		var store = this.getStore();
	  		var proxy = store.getProxy();
			this.show();
	  		proxy.extraParams.query = Ext.encode([ [ { attr: "form_id", value: formId, operator: "eq" } ] ]);

			store.load();
			this.setTitle('Form Questions for \"' + formLabel + '\"');
			
	  	}, this);
	  } */

/*
		this.getView().on('itemclick', function(self, record, item, index, e, eOpts) {
				//Ext.Msg.show({ title: 'Access denied', msg: 'You have no rights to perform edit action!', buttons: Ext.Msg.OK, icon: Ext.Msg.ERROR });
		}, this);
*/

		
/*

		this.getView().on('afterrender', function(self, record, item, index, e, eOpts) {
			//var reportGrid = function() { self.store.load(); }

/*
function ff_function(n, j, k, m, h, i, l) {
			var l = "";
			if (k.get("percent_money") == "0") {
				l += "<div style='text-align:center;font-weight:bold'><img src=/images/icons/flags/anonymous.png>";
				h.attr = 'ext:qtip="ANONYMOUS</div>"'
			}
			return l;
		}

			var grid = this.grid;
			
			


			var be = this.record("percent_money");
			if (be == "Other"){ 
				alert (":)"); 
				}else{
				 alert('AS'); 
				}

				//var record = getRecord('brand__name');
				//alert(record);
				//Ext.Msg.show({ title: 'Access denied', msg: 'You have no rights to perform edit action!', buttons: Ext.Msg.OK, icon: Ext.Msg.ERROR });
		}, this);

		
  }
*/

				
}

}
