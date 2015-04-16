% include('header.tpl')
<div class="post">
	<h1>{{nombre}}</h1>
	<p>Última versión: {{version}}</p>
	<p>Descargas versión: {{descargas}}</p>
	<p>Autor: {{autor}}</p>
	<p>Descripción (EN): {{descripcion}}</p>
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