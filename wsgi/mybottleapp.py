from bottle import get,post,route,request,template,default_app,static_file
import json
import requests

@route('/')
def principal():
	rdescargas=requests.get("http://rubygems.org/api/v1/downloads.json")
	docdescargas = json.loads(rdescargas.text)
	
	totaldescargas=docdescargas["total"]
	return template('index.html', totaldescargas=totaldescargas)

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

@get('/info')
@post('/info', method='POST')
def info():
	gema=request.params.get('gem')
	url_info="http://rubygems.org/api/v1/gems/"

	rinfo=requests.get(url_info+gema+".json")
	docinfo = json.loads(rinfo.text)

	nombre=docinfo["name"]
	version=docinfo["version"]
	descargas=docinfo["version_downloads"]
	autor=docinfo["authors"]
	descripcion=docinfo["info"]
	dependencias=docinfo["dependencies"]["runtime"]

	return template('info.tpl',nombre=nombre,version=version,descargas=descargas,
		autor=autor,descripcion=descripcion,dependencias=dependencias)

@get('/history')
	gemaversion=request.params.get('gem')
	url_historial="http://rubygems.org/api/v1/versions/"

	rhistorial=requests.get(url_info+gemaversion+".json")
	dochistorial = json.loads(rinfo.text)

	hnombre=dochistorial["name"]
	hversion=dochistorial["number"]
	hdescargas=dochistorial["version_downloads"]
	hautor=dochistorial["authors"]
	hfechapubli=dochistorial["built_at"]
	confechapubli = hfechapubli[8:10]+"-"+hfechapubli[5:8]+hfechapubli[0:4]+" "+hfechapubli[11:16]

	return template('history.tpl',hnombre=hnombre,hversion=hversion,hdescargas=hdescargas,
		hautor=hautor,confechapubli=confechapubli)

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
