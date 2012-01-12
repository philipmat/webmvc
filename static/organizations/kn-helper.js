window['organizations'] = (function() {
	var me = {};
	me.ViewModel = new (function() {
		this.active = ko.observable();
		this.elements = ko.observableArray([]);
	})();	
	me.makeModel = function (fromJson) {
		var model = {};
		model.id = fromJson.id;
		model.name = ko.observable(fromJson.name);
		model.url = ko.observable(fromJson.url);
		model.prepUrl = ko.computed(function() {
			return '?/organizations/' + model.id;
		});
		return model;
	};
	me.loadModel = function (fromJson) {
		var model = this.makeModel(fromJson);
		this.ViewModel.active(model);
	};
	me.loadViewModel = function(fromJson) {
		fromJson.all.forEach(function(o) {
			var m = this.makeModel(o);
			this.ViewModel.elements.push(m);
		}, this);
	};
	me.testBind = function() {
		var j0 = { id : 100, name : 'Moof', url : 'about:blank' },
			j1 = { id : 101, name : 'Spoof', url : 'about:blank' };
		var k = { all : [ j0, j1] };
		this.loadViewModel(k);
	};
	return me;
})();
