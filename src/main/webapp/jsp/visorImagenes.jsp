<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
  .zoom{  
    height:100vh;  
    width:100%;  
    display:grid;  
    place-items:center;  
    position:fixed;  
    top:0;  
    left:0;
}
</style>
<body>
<div class="zoom">
<img src="<%=request.getParameter("imagen")%>" width="100%" style="text-align: center;top:0;left:0;right:0;bottom:0;margin:auto;position:absolute"/>
</div>
</body>
<script>
const zoomElement = document.querySelector(".zoom");
let zoom = 1;
const ZOOM_SPEED = 0.1;

document.addEventListener("wheel", function(e) {  
    
    if(e.deltaY > 0){    
        zoomElement.style.transform = `scale(${zoom += ZOOM_SPEED})`;  
    }else{    
        zoomElement.style.transform = `scale(${zoom -= ZOOM_SPEED})`;  }

});
</script>
</html>