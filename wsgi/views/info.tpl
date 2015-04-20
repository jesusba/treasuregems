% include('header.tpl')
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
          	<h3>{{nombre}}</h3>
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
         <div id="search-form">
        <form class="form-container" action="/info" method="post">
          <input name="gem" type="text" class="search-field"/>
          <div class="submit-container">
            <input type="submit" value="Buscar" class="submit" />
          </div>
        </form>
      </div> 
      <div align=center><a href="http://all-free-download.com/free-website-templates/">TreasureGems</a>, 2015. All rights reserved.</div>
      <div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div> 
        </div>
      </div>
    </div>
    <div class="cleaner">&nbsp;</div>
  </div>
</div>
</body>
</html>