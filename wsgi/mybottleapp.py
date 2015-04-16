from bottle import get, post, route,request,template,default_app
import json
import requests

@route('/')
def principal():
	rdescargas=requests.get("http://rubygems.org/api/v1/downloads.json")
	docdescargas = json.loads(rdescargas.text)
	
	totaldescargas=docdescargas["total"]
	return template('index.html', totaldescargas=totaldescargas)

@get('/info')
@post('/info', method='POST')
def info():
	gema=request.forms.get('gem')
	url_info="http://rubygems.org/api/v1/gems/"

	rinfo=requests.get(url_info+gema+".json")
	docinfo = json.loads(rinfo.text)

	nombre=gema
	version=docinfo["version"]
	descargas=docinfo["version_downloads"]
	autor=docinfo["authors"]
	descripcion=docinfo["info"]
	dependencias=docinfo["dependencies"]["runtime"]

	return template('info.tpl',nombre=nombre,version=version,descargas=descargas,
		autor=autor,descripcion=descripcion,dependencias=dependencias)

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
