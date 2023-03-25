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
  <body> 
    <jsp:include page="cabecera.jsp"/>
    <div class="intro container-fluid firmas"> 
      <h2>Felicitaciones</h2> 
      <p>Y algunas cosas que decirte en este y en cualquier otro día</p> 
	  <div id="firma-gallery">
	    <!--<img id="current-firma" src="images/image1.jpg" alt="Image 1" style="max-width: 50%; margin: 20px;">-->
		<div id="firma-thumbs"></div>
      </div>
    </div> 
    <a href="#">Back to top</a>
	<script src="../js/scriptFirmas.js"></script>
  </body>
</html>