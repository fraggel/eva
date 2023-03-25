<script>
const canciones = ['http://www.felicidadesprincesa.es/music/1.mp3',
						'http://www.felicidadesprincesa.es/music/2.mp3',
						//'http://www.felicidadesprincesa.es/music/3.mp3',
						'http://www.felicidadesprincesa.es/music/4.mp3',
						'http://www.felicidadesprincesa.es/music/5.mp3',
						'http://www.felicidadesprincesa.es/music/6.mp3',
						'http://www.felicidadesprincesa.es/music/7.mp3'];
const cancionesTextos = ['Sabina - A la orilla de la chimenea',
	'Metallica - Nothing else matters',
	//'http://www.felicidadesprincesa.es/music/3.mp3',
	'Extremoduro - So payaso',
	'Texas - Say what you want',
	'Don Patricio - Contando lunares',
	'Heroes del silencio - La chispa adecuada'];						
var x=0;	
var lastPlay=0;
var rnd=false;
var playing=true;
window.onload = function() {
  var context = new AudioContext();
  document.getElementById("canc").innerHTML=x+1+"/"+canciones.length; 
  document.getElementById("cancTexto").innerHTML=cancionesTextos[x];
  document.getElementById("miPlayer").onended = function() {
	  lastPlay=x;
	   siguiente(true);
	};
}


function playAudio() { 
	document.getElementById("miPlayer").play(); 
} 

function pauseAudio() { 
	document.getElementById("miPlayer").pause(); 
}
function anterior(){
	document.getElementById("miPlayer").pause();
	var y=x-1;
	if(y<0){
		y=canciones.length-1;
	}
	x=y;
	if(rnd){
		x=Math.floor((Math.random()*canciones.length));
		y=x;
		if(x==lastPlay){
			x=Math.floor((Math.random()*canciones.length));
			y=x;
			if(x==lastPlay){
				x=Math.floor((Math.random()*canciones.length));
				y=x;
			}
			if(x==lastPlay){
				x=Math.floor((Math.random()*canciones.length));
				y=x;
			}
		}
	}
	document.getElementById("miPlayer").setAttribute('src', canciones[y]);
	document.getElementById("miPlayer").load();
	document.getElementById("miPlayer").play();
	document.getElementById("canc").innerHTML=x+1+"/"+canciones.length;
	document.getElementById("cancTexto").innerHTML=cancionesTextos[x];
}
function siguiente(valor){
	document.getElementById("miPlayer").pause();
	var y=x+1;
	if(y>canciones.length-1){
		y=0;
	}
	x=y;
	if(valor || rnd){
		x=Math.floor((Math.random()*canciones.length));
		y=x;
		if(x==lastPlay){
			x=Math.floor((Math.random()*canciones.length));
			y=x;
		}
	}
	document.getElementById("miPlayer").setAttribute('src', canciones[y]);
	document.getElementById("miPlayer").load();
	document.getElementById("miPlayer").play();
	document.getElementById("canc").innerHTML=x+1+"/"+canciones.length;
	document.getElementById("cancTexto").innerHTML=cancionesTextos[x];
}
function playlist(){
	var texto="";
	for (var i = 0; i < canciones.length; i++) {
		texto+=(i+1)+") "+cancionesTextos[i]+"\n";
	}
	alert(texto);
	
}
function rndOn(){
	if(rnd){
		rnd=false;
		document.getElementById("rndImg").src="../images/rnd.png";
	}else{
		rnd=true;
		document.getElementById("rndImg").src="../images/rndon.png";
	}
}
function playpause(){
	if(playing){
		playing=false;
		document.getElementById("playpause").src="../images/play.png";
		if("false"==document.getElementById("reprodSorpresas").value){
			document.getElementById("miPlayer").pause();
		}else{
			document.getElementById("miPlayer2").pause();
		}
	}else{
		playing=true;
		document.getElementById("playpause").src="../images/pause.png";
		if("false"==document.getElementById("reprodSorpresas").value){
			document.getElementById("miPlayer").play();
		}else{
			document.getElementById("miPlayer2").play();	
		}
		
	}
}

</script>
<style>
html {
  background-color: #00808033;
  width: 100%;
}
</style>
<audio id="miPlayer" autoplay>
    <source src="../music/1.mp3" type="audio/mp3"/>
</audio>

<div style="text-align:center;">
	<div style="display:inline;float:left;">
		<img src="../images/prev.png" width="48px" onclick="anterior()" style="cursor: pointer;"/><span id="canc" style="font-size: xxx-large;"></span>
		<img src="../images/next.png" width="48px" onclick="siguiente()" style="cursor: pointer;"/>
		<img src="../images/playlist.png" width="48px" onclick="playlist()" style="cursor: pointer;"/>
		<img id="rndImg" src="../images/rnd.png" width="48px" onclick="rndOn()" style="cursor: pointer;"/>
		<img id="playpause" src="../images/pause.png" width="48px" onclick="playpause()" style="cursor: pointer;"/>
	</div>
	<div style="display:inline;">
		<span id="cancTexto" style="font-size: xx-large;float:right"></span>
	</div>
</div>
<audio id="miPlayer2" loop>
    <source src="../music/3.mp3" type="audio/mp3"/>
<input type="hidden" name="reprodSorpresas" id="reprodSorpresas" value="false"/> 