window['people'] = {
	ViewModel : {
		active : ko.observable(),
		elements : ko.observableArray([]),
		add : function() {
			this.active(this.makeFrom({id:-1, name:'Input name', height : '0\' 0"',hot:0}));
		},
		update : function(elem) {
			var active = this.active();
			var json = ko.toJSON(active);
			if (active.id == -1) {
				alert("POST " + window.CONFIG.dataUrl('people') + " with:\n" + json);
			} else {
				alert("PUT " + window.CONFIG.dataUrl('people', active.id) + " with:\n" + json);
			}
			if (active.id == -1) {
				// send it to the server as new.
				active.id = this.elements().length + 1;
				this.elements.push(active);
			}
		},
		remove : function(elem) {
			var active = this.active(), json = ko.toJSON(active);
			alert('DELETE ' + window.CONFIG.dataUrl('people' + active.id));
			// this.elements.remove(active);
		},
		makeFrom : function (fromJson) {
			var model = {};
			model.id = fromJson.id;
			model.name = ko.observable(fromJson.name);
			model.height = ko.observable(fromJson.height);
			model.hot = ko.observable(fromJson.hot);
			model.hotness = ko.computed(function() {
				var k = model.hot();
				if (k >= 10) return 'VERY!';
				if (k >= 8) return 'Yes';
				if (k >= 6) return 'Meh.';
				return 'No.';
			});
			model.prepUrl = ko.computed(function() {
				return '?people/' + model.id;
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
		var j0 = { id : 100, name : 'Moof', height : '3\' 2"' },
			j1 = { id : 101, name : 'Spoof', url : '1\' 0"' };
		var k = { all : [ j0, j1] };
		this.loadViewModel(k);
	}
}
