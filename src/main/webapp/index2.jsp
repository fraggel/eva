<!doctype html>
<html lang="es-ES"> 
  <head> 
    <title>Felicidades Princesa</title> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head> 
  <script>
  var GivenDate = '2022-04-14';
  var CurrentDate = new Date();
  GivenDate = new Date(GivenDate);

  if(GivenDate > CurrentDate){
	  window.location = "nodisponible.jsp";
  }
  </script>
  <body> 
    <div class="inicio">
      <div class="btnInicio">
      <img width="100%" id="fondo" src="images/fondo1.png"/>
      <img id="compile" src="images/compile1.png" style="text-align:center;outline: 2px solid white;visibility: hidden;"/>
      <a id="boton" onclick="compilar();" style="margin-top: -300px">java -jar compilation.jar</a>
      </div>
    </div>
<script>
  $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
  });
  
  var images = [];
  images[0] = ['images/compile1.png'];
  images[1] = ['images/compile2.png'];
  images[2] = ['images/compile3.png'];
  images[3] = ['images/compile4.png'];
  images[4] = ['images/compile2.png'];
  images[5] = ['images/compile4.png'];
  images[6] = ['images/compile3.png'];
  images[7] = ['images/compile3.png'];
  images[8] = ['images/compile4.png'];
  images[9] = ['images/compile2.png'];
  var index = 0;

  function change() {
    document.getElementById('compile').src = images[index];
    if (index == 9) {
    	document.getElementById('fondo').src="images/error.png";
    	document.getElementById('fondo').style="visibility: visible;width:100%;height:100%;";
    	document.getElementById('compile').style="visibility:hidden";
    	document.getElementById('boton').style="visibility:hidden";
    	setTimeout(abrirWeb, 3000);
    	//document.getElementById('fondo').width="50%";
    } else {
      index++;
    }

    setTimeout(change, 250);
  }
  function abrirWeb(){
	  window.location = "jsp/inicio.jsp";
  }
  function compilar(){
	  document.getElementById('compile').style="text-align:center;outline: 2px solid white;visibility: visible;'";
	  document.getElementById('fondo').style="visibility: hidden;'";
	  change();
  }
  </script>
</html>