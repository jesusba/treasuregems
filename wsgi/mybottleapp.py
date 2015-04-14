from bottle import route,request,template,default_app
import json
import requests

@route('/')
def principal():
	return template('index.html')

@route('/info', method='POST')
def info():
	gema=request.forms.get('gem')
	url_info="http://rubygems.org/api/v1/gems/"

	rinfo=requests.get(url_info+gema+".json")
	doc = json.loads(rinfo.text)

	nombre=gema
	version=doc["version"]
	descargas=doc["version_downloads"]
	autor=doc["authors"]
	descripcion=doc["info"]

	return template('info.tpl',nombre=nombre,version=version,descargas=descargas,
		autor=autor,descripcion=descripcion)

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
