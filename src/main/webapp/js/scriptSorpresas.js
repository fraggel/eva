var imageThumbs = document.getElementById("image-thumbs");
//var currentImage = document.getElementById("current-image");
if(parent.frames["inferior"].playing){
	parent.frames["inferior"].document.getElementById("miPlayer").pause();
	parent.frames["inferior"].document.getElementById("miPlayer2").play();
}
parent.frames["inferior"].document.getElementById("reprodSorpresas").value="true";
for (var i = 1; i <= 16; i++) {
  var thumb = document.createElement("img");
  thumb.src = "../images/sorpresas/thmb_" + i + ".png";
  thumb.alt = "Image " + i;
  thumb.classList.add("thumb");
  imageThumbs.appendChild(thumb);
  thumb.addEventListener(
    "click", function() {
		var left = (screen.width/2)-(1280/2);
  		var top = (screen.height/2)-(720/2);
  		var x=this.src.split("/")[this.src.split("/").length-1].replace(".png","");
  		x=x.replace("thmb_","");
  		var destino=this.src.replace(".png",".jpg");
  		destino=destino.replace("thmb_","");
  		if(x==2||x==7||x==10||x==12||x==13||x==16){
			  parent.frames["inferior"].document.getElementById("miPlayer").pause();
			  parent.frames["inferior"].document.getElementById("miPlayer2").pause();
			  
			  destino=destino.replace(".jpg",".m4v")
			  var new_window =window.open("visorVideos.jsp?video="+destino,"imagenGrande","toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=1280,height=720,top="+top+",left="+left);
			  new_window.document.title = 'Felicidades';
			  new_window.onload = function(){ 
				    /* my code */ 
				    this.onbeforeunload = function(){ if(parent.frames["inferior"].playing){
	parent.frames["inferior"].document.getElementById("miPlayer").pause();
	parent.frames["inferior"].document.getElementById("miPlayer2").play();
} }
				}
		  }else{
			  //window.open("visorImagenes.jsp?imagen="+destino,"imagenGrande","toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=1280,height=720,top="+top+",left="+left);
			  var ventana=window.open(destino,"imagenGrande","toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=1280,height=720,top="+top+",left="+left);
			  ventana.document.title = 'Felicidades';
		  }
		  
    }
  );
}
