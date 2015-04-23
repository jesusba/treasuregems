% include('header.tpl')
<div id="skip-menu"></div>
<div class="column-right">
	<div class="box">
		<div class="box-top"></div>
		<div class="box-in">
			<h2>Versiones <strong></strong></h2>
			<table border="1">
				<tr>
					<td><strong>Versión</strong></td>
  					<td colspan="2"><strong>Autor</strong></td>
  					<td colspan="2"><strong>Descargas de la versión</strong></td>
  					<td colspan="2"><strong>Fecha publicación</strong></td>
				</tr>
				<%
				for i in dochistorial:
					version=i["number"]
					autor=i["authors"]
					descargas=i["downloads_count"]
					fechapubli=i["built_at"]
					confechapubli = fechapubli[8:10]+"-"+fechapubli[5:8]+fechapubli[0:4]+" "+fechapubli[11:16]
				%>
				<tr>
					<td>{{version}}</td>
					<td colspan="2">{{autor}}</td>
					<td colspan="2">{{descargas}}</td>
					<td colspan="2">{{confechapubli}}</td>
				</tr>
				<%
				end
				%>
			</table>
		</div>
		<div align=center><a href="http://all-free-download.com/free-website-templates/">TreasureGems</a>, 2015. All rights reserved.</div>
		<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> 
		</div>
	</div>
</div>
	