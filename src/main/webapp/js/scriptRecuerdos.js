var imageThumbs = document.getElementById("image-thumbs");
//var currentImage = document.getElementById("current-image");
parent.frames["inferior"].document.getElementById("reprodSorpresas").value="false";
if(parent.frames["inferior"].playing){
	parent.frames["inferior"].document.getElementById("miPlayer").play();
	parent.frames["inferior"].document.getElementById("miPlayer2").pause();
}
for (var i = 1; i <= 23; i++) {
  var thumb = document.createElement("img");
  thumb.src = "../images/recuerdos/thmb_" + i + ".png";
  thumb.alt = "Image " + i;
  thumb.classList.add("thumb");
  imageThumbs.appendChild(thumb);
  thumb.addEventListener(
    "click", function() {
		var left = (screen.width/2)-(1280/2);
  		var top = (screen.height/2)-(720/2);
  		var x=this.src.split("/")[this.src.split("/").length-1].replace(".png","");
  		x=x.replace("thmb_","");
  		var destino=this.src.replace("thmb_","");
  		destino=destino.replace(".png",".jpg");
		//window.open("visorImagenes.jsp?imagen="+destino,"imagenGrande","width=1280,height=720,top="+top+",left="+left);
		var ventana=window.open(destino,"imagenGrande","width=1280,height=720,top="+top+",left="+left);
		ventana.document.title = 'Felicidades';
    }
  );
}
