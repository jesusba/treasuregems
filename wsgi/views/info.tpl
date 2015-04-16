% include('header.tpl')
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
	</div>
	</div>	
</body>
</html>