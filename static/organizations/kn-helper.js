window['organizations'] = {
	Model : function (fromJson) {
		this.id = fromJson.id;
		this.name = ko.observable(fromJson.name);
		this.url = ko.observable(fromJson.url);
	},
	ViewModel : function() {},
	bind : function (model) {
		ko.applyBindings(model);
	},
	testBind : function() {
		var j = { id : 100, name : 'Moof', url : 'about:blank' };
		this.bind(new this.Model(j));
	},
}
