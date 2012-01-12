function getQS(uri) {
	return uri.substr(1);
}

function getParts(uri) {
	var parts = getQS(uri).split('/');
	parts = _(parts).filter(function (it) { return it !== ''; });
	var ns = _.first(parts),
		id = _.first(_.rest(parts));
	return { ns : ns, id : id };
}

function includeHelper(ns) {
	$('head').append( $('<script/>', {
		src : ns + '/kn-helper.js',
	type : 'text/javascript'}));
}

function setup(uri) {
	var parts = getParts(uri);
	console.log(parts);
	var ns = parts.ns, id = parts.id;
	includeHelper(ns);
	if (ns !== undefined) {
		var all_uri = '../data/' + ns + '/all.js';
		// console.log('Loading all: %s', all_uri);
		$.getJSON(all_uri, function(allData) {
			window[ns].loadViewModel(allData);
			if (id !== undefined) {
				var id_uri = '../data/' + ns + '/' + id + '.js';
				// console.log('Loading single element from: %s', id_uri);
				$.getJSON(id_uri, function(idData) {
					console.log('Data loaded.');
					window[ns].loadModel(idData);
					ko.applyBindings(window[ns].ViewModel);
				});
			} else {
				ko.applyBindings(window[ns].ViewModel);
			}

		});
	}
}

