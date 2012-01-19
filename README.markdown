A proof of concept for a new (old) way to build web apps, one that marries 
mash-ups to JSON based web services.

To run this sample:

* If you have python installed, execute `python -m SimpleHTTPServer` 
in this root folder, then point your browser to [http://localhost:8000/static/](http://localhost:8000/static/).
With ruby, you can use Rack with [this simple recipe](http://blog.samsonis.me/2010/02/rubys-python-simplehttpserver/). 
* Otherwise, point your web server to this folder. If you would access it via `http://localhost/webmvc/`, 
go and change the `static/config.js` file to read `/webmvc/static` and `/webmvc/data` instead.

To prove the point I made in [my blog post](http://philipm.at/) - 
that you could get the JSON data from another server - you could 
run `python -m SimpleHTTPServer 8000` in `./static` and `python -m SimpleHTTPServer 8001` 
in `./data`, in which case you'll want to edit `./static/config.js` and use 
`/` for `templates_root` and `http://localhost:8001` for `data_root`.
