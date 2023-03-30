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
    <div class="intro container-fluid"> 
      <div id="balloon-container">
      <div class="divimgCabecera"><img id="imagenPrincipal" style="height: fit-content!important;" width="100%" src="../images/cabecera4.png"/>
      <h2 style="width: 100%;">¡¡FELIZ CUMPLEAÑOS PRINCESA!!</h2> 
      <p style="width: 100%;">Espero te guste tu sorpresa</p>
      </div> 
      </div>
    </div> 
	<script src="../js/scriptGaleria.js"></script>
  </body>
  <script>
  var images = [];
  /*images[0] = ['../images/cabecera1.png'];
  images[1] = ['../images/cabecera2.png'];
  images[2] = ['../images/cabecera3.png'];
  images[3] = ['../images/cabecera4.png'];
  images[4] = ['../images/cabecera5.png'];
  images[5] = ['../images/cabecera6.png'];
  images[6] = ['../images/cabecera7.png'];*/
  images[0] = ['../images/cabecera1.jpg'];
  images[1] = ['../images/cabecera2.jpg'];
  images[2] = ['../images/cabecera3.jpg'];
  images[3] = ['../images/cabecera4.jpg'];
  images[4] = ['../images/cabecera5.jpg'];
  images[5] = ['../images/cabecera6.jpg'];
  images[6] = ['../images/cabecera7.jpg'];
  var index = 0;

  function change() {
    document.getElementById("imagenPrincipal").src = images[index];
    if (index == 6) {
      index = 0;
    } else {
      index++;
    }

    setTimeout(change, 1000);
  }

  window.onload = change();
  </script>
</html>