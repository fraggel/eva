var imageThumbs = document.getElementById("image-thumbs");
//var currentImage = document.getElementById("current-image");
if(parent.frames["inferior"].playing){
	parent.frames["inferior"].document.getElementById("miPlayer").play();
	parent.frames["inferior"].document.getElementById("miPlayer2").pause();
}
parent.frames["inferior"].document.getElementById("reprodSorpresas").value="false";
for (var i = 1; i <= 117; i++) {
  var thumb = document.createElement("img");
  thumb.src = "../images/acordarme/" + i + ".png";
  thumb.alt = "Image " + i;
  thumb.classList.add("thumb");
  imageThumbs.appendChild(thumb);
  thumb.addEventListener(
    "click", function() {
		var left = (screen.width/2)-(1280/2);
  		var top = (screen.height/2)-(720/2);
  		var x=this.src.split("/")[this.src.split("/").length-1].replace(".png","");
  		var destino=this.src.replace(".png",".m4v");
        parent.frames["inferior"].document.getElementById("miPlayer").pause();
		parent.frames["inferior"].document.getElementById("miPlayer2").pause();
		var new_window =window.open("visorVideos.jsp?video="+destino,"imagenGrande","toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=1280,height=720,top="+top+",left="+left);
		new_window.document.title = 'Felicidades';
		new_window.onload = function(){ 
				    /* my code */ 
				    this.onbeforeunload = function(){ if(parent.frames["inferior"].playing){
	parent.frames["inferior"].document.getElementById("miPlayer").play();
	parent.frames["inferior"].document.getElementById("miPlayer2").pause();} }
				}		  
    }
  );
}
