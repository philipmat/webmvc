/*
 * if you're using a single server started in webmvc,
 * data_root : '/data', templates_root : '/static'
 * if you start 2 separate servers, one in webmvc/data, the other in webmvc/static
 * data_root : 'http://localhost:8001', templates_root : '/' (etc)
 */
window.CONFIG = {
	data_root : '/data',
	templates_root : '/static',
	dataUrl : function () {
		var x = _.union(this.data_root, _.map(arguments, function(v) { return v; }));
		//console.log(x);
		return x.join('/');
	},
	templatesUrl : function () {
		var x = _.union(this.templates_root, _.map(arguments, function(v) { return v; }));
		//console.log(x);
		return x.join('/');
	},
}
