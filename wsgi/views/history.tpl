% include('header.tpl')
<div id="skip-menu"></div>
<div class="column-right">
	<div class="box">
		<div class="box-top"></div>
		<div class="box-in">
			<h2>Versiones <strong>{{nombrehistorial}}</strong></h2>
			<table>
				<tr>
					<td><strong>Versión</strong></td>
  					<td colspan="2"><strong>Autor</strong></td>
  					<td colspan="2"><strong>Fecha publicación</strong></td>
  					<td><strong>Fecha publicación</strong></td>
				</tr>
				<%
				for i in doc:
				%>
				<tr>
					<td>i["number"]</td>
					<td colspan="2">i["author"]</td>
					<td colspan="2">i["downloads_count"]</td>
					<td>i["built_at"][8:10]+"-"+i["built_at"][5:8]+i["built_at"][0:4]+" "+i["built_at"][11:16]</td>
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
	