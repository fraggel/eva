<!doctype html>
<html> 
  <head> 
    <title>Felicidades Princesa</title> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
  </head> 
  <style>
	div#firma-thumbs.formulario {
    margin: 0px auto;
    text-align: center;
    width: 95%;
    display: block;
}

div#firma-thumbs.formulario div#divContenedor {
    margin: 0px auto;
    text-align: center;
    float: none;
    min-width: 60%;
}

div#firma-thumbs.formulario  div#divContenedor textarea {
    border: 5px solid #238fb8;
    border-radius: 10px;
    background: #cfe0e2;
    margin-bottom: 20px;
    width: 100%;
}

div#firma-thumbs.formulario  div#divContenedor input[type='submit'] {
    background: #238fb8;
    border: 0px;
    padding: 9px;
    border-radius: 5px;
    min-width: 120px;
    color: #fff;
    text-transform: uppercase;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
    margin-bottom: 25px;
    
}

div#firma-thumbs.formulario  div#divContenedor input[type='submit']:hover {
    background: #238fb8ba;
}
  </style> 
  <body> 
    <jsp:include page="cabecera.jsp"/>
    <form method="post" action="/eva/envioTexto">
    <div class="intro container-fluid firmas"> 
      <h2>Formulario de respuesta</h2> 
      <p>Si quieres escribirme o contestarme algo, puedes hacerlo en el siguiente formulario</p> 
	  <div id="firma-gallery">
	    <div id="firma-thumbs" class="formulario">
			<div id="divContenedor" class="thumb" style="background-image: url('../images/postales/4.png');">
			<p style="color:red;">
			<% if(request.getParameter("respuesta")!=null){
				if("ok".equals(request.getParameter("respuesta"))){
					%>Texto enviado correctamente<%
				}else{
					%>El texto está vacío<%
				}
			}%></p><p class="texto"><textarea name="textoEnviado" id="textoEnviado" rows="15" cols="55"></textarea></br><input type="submit"/></p>
			</div>
		</div>
      </div>
      </form>
    </div> 
    <a href="#">Back to top</a>
  </body>
  <script>
  parent.frames["inferior"].document.getElementById("reprodSorpresas").value="false";
  if(parent.frames["inferior"].playing){
  	parent.frames["inferior"].document.getElementById("miPlayer").play();
  	parent.frames["inferior"].document.getElementById("miPlayer2").pause();
  }</script>
</html>