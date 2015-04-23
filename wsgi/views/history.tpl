% include('header.tpl')
<div id="skip-menu"></div>
<div class="column-right">
	<div class="box">
		<div class="box-top"></div>
		<div class="box-in">
			<h2>Todas las Versiones: {{gemaversion}}<strong></strong></h2>
			<table class="table1">
			<thead>
				<th scope="col">Versión</th>
  				<th scope="col">Autor</th>
  				<th scope="col">Descargas de la versión</th>
  				<th scope="col">Fecha publicación</th>
			</thead>
			<tbody>
			<%
			for i in dochistorial:
				version=i["number"]
				autor=i["authors"]
				descargas=i["downloads_count"]
				fechapubli=i["built_at"]
				confechapubli = fechapubli[8:10]+"-"+fechapubli[5:8]+fechapubli[0:4]+" "+fechapubli[11:16]
			%>
			<tr>
				<td><a href="http://rubygems.org/gems/{{gemaversion}}/versions/{{version}}">{{version}}</td>
				<td>{{autor}}</td>
				<td>{{descargas}}</td>
				<td>{{confechapubli}}</td>
			</tr>
			<%
			end
			%>
			</tbody>
		</table>
		</div>
		<div align=center><a href="http://all-free-download.com/free-website-templates/">TreasureGems</a>, 2015. All rights reserved.</div>
		<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
	</div>
</div>
</body>
</html>
	