<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Treasure Gems</title>
</head>
<body>
	<h1>{{nombre}}</h1>
	<p>Última versión: {{version}}</p>
	<p>Descargas versión: {{descargas}}</p>
	<p>Autor: {{autor}}</p>
	<p>Descripción (EN): {{descripcion}}</p>
	<ul>Depende de: 
	<%
	for i in dependencias:
	%>
		<li><a href="/info?gem={{i["name"]}}">{{i["name"]}}</a> Versiones: {{i["requirements"]}}</li>
	<%
	end
	%>
	</ul>	
</body>
</html>