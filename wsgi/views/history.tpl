% include('header.tpl')
<div id="skip-menu"></div>
<div class="column-right">
	<div class="box">
		<div class="box-top"></div>
		<div class="box-in">
			<h2>Versiones <strong>{{hnombre}}</strong></h2>
			<%
			for i in dependencias:
			%>
			<div>
				<h2>Número de versión: {{hversion}}</h2>
			</div>
			<div>
				<h2>Descargas versión: {{descargashistorial}}</h2>
			</div>
			<div>
				<h2>Autor: {{autorhistorial}}</h2>
			</div>
			<div>
				<h2>Fecha versión: {{confechapubli}}</h2>
			</div>
			<%
			end
			%>
		</div>
		<div align=center><a href="http://all-free-download.com/free-website-templates/">TreasureGems</a>, 2015. All rights reserved.</div>
		<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> 
		</div>
	</div>
</div>
	