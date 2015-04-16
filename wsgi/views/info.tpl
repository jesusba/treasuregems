% include('header.tpl')
<div class="post">
	<div>
		<h1>{{nombre}}</h1>
		<p>Última versión: {{version}}</p>
	</div>
	<div>
		<p>Descargas versión: {{descargas}}</p>
	</div>
	<div>
		<p>Autor: {{autor}}</p>
	</div>
	<div>
		<p>Descripción (EN): {{descripcion}}</p>
	</div>
</div>
</div>
	<div id="sidebar1">
			<div>
				<h2>Dependencias</h2>
				<ul class="style2"> 
				<%
				for i in dependencias:
				%>
				<li><br><a href="/info?gem={{i["name"]}}">{{i["name"]}}</a></br>Versiones: {{i["requirements"]}}</li>
				<%
				end
				%>
				</ul>
			</div>
	</div>
</body>
</html>