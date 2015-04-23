% include('header.tpl')
<div class="column-left">
<h3>DEPENDENCIAS</h3>
      <ul class="menu">
      	<%
		for i in dependencias:
		%>
		<li><br><a href="/info?gem={{i["name"]}}">{{i["name"]}}</a></br>Versiones: {{i["requirements"]}}</li>
		<%
		end
		%>
      </ul>
    </div>
    <div id="skip-menu"></div>
    <div class="column-right">
      <div class="box">
        <div class="box-top"></div>
        <div class="box-in">
          <div>
          	<h2><strong>{{nombre}} </strong><a href="/history?gem={{nombre}}"><u>(otras versiones)</u></a></h2>
          	<h2>Última versión: {{version}}</h2>
          </div>
          <div>
			<h2>Descargas versión: {{descargas}}</h2>
		</div>
		<div>
			<h2>Autor: {{autor}}</h2>
		</div>
		<div>
			<h2>Descripción (EN): {{descripcion}}</h2>
		</div>
      </div>
      <div align=center><a href="http://all-free-download.com/free-website-templates/">TreasureGems</a>, 2015. All rights reserved.</div>
      <div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> 
        </div>
      </div>
    </div>
    <div class="cleaner">&nbsp;</div>
  </div>
</div>
</body>
</html>