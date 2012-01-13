window['organizations'] = {
	ViewModel : {
		active : ko.observable(),
		elements : ko.observableArray([]),
		add : function() {
			this.active(this.makeFrom({id:-1, name:'Input name', url : 'http://'}));
		},
		update : function(elem) {
			var active = this.active();
			var json = ko.toJSON(active);
			if (active.id == -1) {
				alert("POST " + window.CONFIG.dataUrl('organizations') + " with:\n" + json);
			} else {
				alert("PUT " + window.CONFIG.dataUrl('organizations', active.id) + " with:\n" + json);
			}
			if (active.id == -1) {
				// send it to the server as new.
				active.id = this.elements().length + 1;
				this.elements.push(active);
			}
		},
		remove : function(elem) {
			var active = this.active(), json = ko.toJSON(active);
			alert('DELETE ' + window.CONFIG.dataUrl('organization', active.id));
			// this.elements.remove(active);
		},
		makeFrom : function (fromJson) {
			var model = {};
			model.id = fromJson.id;
			model.name = ko.observable(fromJson.name);
			model.url = ko.observable(fromJson.url);
			model.prepUrl = ko.computed(function() {
				return '?organizations/' + model.id;
			});
			return model;
		},
	}, 
	loadModel : function (fromJson) {
		var model = this.ViewModel.makeFrom(fromJson);
		this.ViewModel.active(model);
	},
	loadViewModel : function (fromJson) {
		fromJson.all.forEach(function(o) {
			var m = this.ViewModel.makeFrom(o);
			this.ViewModel.elements.push(m);
		}, this);
	},
	testBind : function() {
		var j0 = { id : 100, name : 'Moof', url : 'about:blank' },
			j1 = { id : 101, name : 'Spoof', url : 'about:blank' };
		var k = { all : [ j0, j1] };
		this.loadViewModel(k);
	}
}
