var imageThumbs = document.getElementById("image-thumbs");
//var currentImage = document.getElementById("current-image");
parent.frames["inferior"].document.getElementById("reprodSorpresas").value="false";
if(parent.frames["inferior"].playing){
	parent.frames["inferior"].document.getElementById("miPlayer").play();
	parent.frames["inferior"].document.getElementById("miPlayer2").pause();
}
for (var i = 1; i <= 17; i++) {
  var thumb = document.createElement("img");
  thumb.src = "../images/ciudades/thmb_" + i + ".png";
  thumb.alt = "Image " + i;
  thumb.classList.add("thumb");
  imageThumbs.appendChild(thumb);
  thumb.addEventListener(
    "click", function() {
		var left = (screen.width/2)-(1280/2);
  		var top = (screen.height/2)-(720/2);
  		var destino=this.src.replace("thmb_","");
  		destino=destino.replace(".png",".jpg");
  		if(destino.indexOf("17")!=-1){
			  destino="visorVideos.jsp?video="+destino.replace("17.jpg","mundo.mp4");
			  var ventana=window.open(destino,"imagenGrande","toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=1280,height=720,top="+top+",left="+left);
			  ventana.document.title = 'Felicidades';
		}else{
			//window.open("visorImagenes.jsp?imagen="+destino,"imagenGrande","toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=1280,height=720,top="+top+",left="+left);	  
			var ventana=window.open(destino,"imagenGrande","toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=1280,height=720,top="+top+",left="+left);
			ventana.document.title = 'Felicidades';
		}
    }
  );
}
