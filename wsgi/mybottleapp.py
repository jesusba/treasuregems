from bottle import get,post,error,route,request,template,default_app,static_file
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

	rtranslate = requests.get("http://api.mymemory.translated.net/get?q="+descripcion+"&langpair=en|es")
	doctranslate = json.loads(rtranslate.text)
	traduccion = doctranslate["responseData"]["translatedText"]
	
	return template('info.tpl',nombre=nombre,version=version,descargas=descargas,
		autor=autor,traduccion=traduccion,dependencias=dependencias)

@get('/history')
def history():
	gemaversion=request.params.get('gem')
	url_historial="http://rubygems.org/api/v1/versions/"

	rhistorial=requests.get(url_historial+gemaversion+".json")
	dochistorial = json.loads(rhistorial.text)

	return template('history.tpl',dochistorial=dochistorial, gemaversion=gemaversion)

@error(404)
def error404(error):
	return template('notfound.tpl')

@error(500)
def error500(error):
	return template('error')

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
