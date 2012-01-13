function getQS(uri) {
	return uri.substr(1);
}

function du() { return window.CONFIG.dataUrl.apply(window.CONFIG, arguments); }
function tu() { return window.CONFIG.templatesUrl.apply(window.CONFIG,arguments); }


function getParts(uri) {
	var parts = getQS(uri).split('/');
	parts = _(parts).filter(function (it) { return it !== ''; });
	var ns = _.first(parts),
		id = _.first(_.rest(parts));
	return { ns : ns, id : id };
}

function includeHelper(ns) {
	$('head').append( $('<script/>', {
		src : tu(ns, 'kn-helper.js'),
	type : 'text/javascript'}));
}

function getTemplates(ns, callback) {
	if (ns !== undefined) {
		var url_s = tu(ns, 'single-template.html'),
			url_m = tu(ns, 'multi-template.html');

		$.get(url_s, function(sData) {
			$('#single').append(sData);
			$.get(url_m, function(mData) {
				$('#multi').append(mData);
				callback();
			});
		});
	}
}

function getKOTemplates(ns, callback) {
	if (ns !== undefined) {
		var url = tu(ns, 'ko-template.html');
		$.get(url, function(data) {
			$('#templates').append(data);
			callback();
		});
	}
}

function getData(ns, id, callback) {
	if (ns !== undefined) {
		var all_uri = du(ns, 'all.js');
		// console.log('loading all: %s', all_uri);
		$.getJSON(all_uri, function(allData) {
			window[ns].loadViewModel(allData);
			if (id !== undefined) {
				var id_uri = du(ns, id + '.js');
				// console.log('loading single element from: %s', id_uri);
				$.getJSON(id_uri, function(idData) {
					window[ns].loadModel(idData);
					ko.applyBindings(window[ns].ViewModel);
				});
			} else {
				ko.applyBindings(window[ns].ViewModel);
			}

		});
	}
}

function setup(uri) {
	var parts = getParts(uri);
	//console.log(parts);
	var ns = parts.ns, id = parts.id;
	includeHelper(ns);
	// if using individual chunks:
	//getTemplates(ns, function() {
	// if using KO templates
	getKOTemplates(ns, function() {
		getData(ns, id);
	});
}

