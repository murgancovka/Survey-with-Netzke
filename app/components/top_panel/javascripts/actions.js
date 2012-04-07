{

  onCreate: function() {
	window.location = 'main/adding_question';
  },

  onShowRespondent: function() {
	Netzke.page.respondentWindow.show();
  },

  onShowUser: function() {
	Netzke.page.userWindow.show();
  },

  onShowHelp: function() {
    	Ext.Msg.show({ title: 'Help', msg: 'Survey :)<br/>Version 0.0.1<br/>2012, Vitali Zakharoff.', buttons: Ext.Msg.OK, icon: Ext.Msg.INFO });
  },

  onLogout: function() {
    	window.location = '/auth/logout';
  }

}
