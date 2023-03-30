var firmaThumbs = document.getElementById("firma-thumbs");
var currentFirmaImage = document.getElementById("current-firma");
parent.frames["inferior"].document.getElementById("reprodSorpresas").value="false";
if(parent.frames["inferior"].playing){
	parent.frames["inferior"].document.getElementById("miPlayer").play();
	parent.frames["inferior"].document.getElementById("miPlayer2").pause();
}
for (var i = 0; i <= 8; i++) {
   // creamos el div contenedor
  var contenedor = document.createElement("DIV");
  contenedor.id = 'divContenedor'
  contenedor.classList.add("thumb");
  firmaThumbs.appendChild(contenedor);
  // incluimos el texto
  var firma = document.createElement("p");
  firma.classList.add("texto");
  switch(i){
		case 0:
			contenedor.style.backgroundImage = "url('../images/postales/4.png')";
			firma.innerHTML = "Esto es sólo para recordarte lo especial que eres.</br>Espero que este nuevo año que empiezas esté tan lleno de alegría y felicidad. ¡Felicidades!"
		break;
		case 1:
			contenedor.style.backgroundImage = "url('../images/postales/1.png')";
			firma.innerHTML ="Y es que el tiempo...</br>"+
			"El tiempo....</br>"+
			"El tiempo sin ti no es tiempo</br>"+
			"</br>"+
			"El tiempo debe ser tu mirada</br>"+
			"El tiempo debe ser tu sonrisa</br>"+
			"El tiempo debe ser cada palabra</br>"+
			"Esas que tus labios dibujan en el aire</br>"+
			"</br>"+
			"El tiempo...</br>"+
			"Esa moneda con la que pagamos en cada exhalación</br>"+
			"Camino de una sola dirección</br>"+
			"Y por eso lo más valioso que tenemos</br>"+
			"</br>"+
			"Y es que el tiempo...</br>"+
			"El tiempo....</br>"+
			"El tiempo sin ti no es tiempo</br>"+
			"</br>"+
			"Ese que vuela cuando estoy contigo</br>"+
			"Ese que se congela cuando me besas</br>"+
			"Pero también ese que se vuelve gigantesco cuando se trata de medir tu ausencia.</br>"+
			"</br>"+
			"El tiempo...</br>"+
			"Mi regalo para tí</br>"
			break;
		case 2:
			contenedor.style.backgroundImage = "url('../images/postales/2.png')";
			firma.innerHTML = "Qué pequeño se hace el mundo en tus abrazos</br>"+
			"Qué profundas se hacen las marcas en mí con tus miradas</br>"+
			"Que cortas se hacen las distancias con tus besos</br>"+
			"Qué luminosas se hacen las noche con tus sonrisas</br>"+
			"Y sobretodo qué bonito y sencillo se hace el día a tu lado";
			break;
		case 3:
			contenedor.style.backgroundImage = "url('../images/postales/3.png')";
			firma.innerHTML="Y es que algo me haces,</br>"+
			"que me estremece el corazón</br>"+
			"el alma se me remueve y siento</br>"+
			"presión en el pecho.</br>"+
			"Esa presión me sube por el pecho</br>"+
			"y me hace cosquillas en la lengua.</br>"+
			"Y es entonces cuando me dan ganas</br>"+
			"de decirte cuánto me gustas.</br>"+
			"</br>"+
			"Y es que algo me haces,</br>"+
			"que me siento así cada vez que te veo,</br>"+
			"cada vez que te pienso.</br>"+
			"Dices que es algo \"de verdad\",</br>"+
			"yo diría que es algo más que eso.</br>"+
			"Algo que supera cualquier sentimiento</br>"+
			"efímero y pasajero.</br>"+
			"Es algo que siempre va a estar ahí</br>"+
			"y me encanta</br>"+
			"</br>"+
			"Tú me encantas</br>";
			break;
		case 4:
			contenedor.style.backgroundImage = "url('../images/postales/4.png')";
			firma.innerHTML="Qué me has hecho?</br>"+
			"Qué me has hecho para sentir</br>"+
			"esta presión en el pecho.</br>"+
			"Una presión que no deja espacio para el aire cada vez que te veo</br>"+
			"Que sólo este encuentra camino de alivio tras decirte \"me gustas\", \"me encantas\"</br>"+
			"</br>"+
			"Qué me has hecho?</br>"+
			"Qué me has hecho para que mis días hayan dejado de tener 24 horas.</br>"+
			"Para que el mundo haya dejado de girar alrededor del sol.</br>"+
			"</br>"+
			"Que me has hecho?</br>"+
			"Que me has hecho para que estos hayan pasado a tener solo las horas en las que estoy contigo y el mundo alrededor tuyo.</br>"+
			"</br>"+
			"Qué me has hecho?</br>"+
			"Qué me has hecho para que todas las formas, colores y olores que me rodean</br>"+
			"hayan perdido los suyos y ahora</br>"+
			"sólo tengan la de tus labios....el de tus ojos.... y el de tu piel.";
			break;
		case 5:
			contenedor.style.backgroundImage = "url('../images/postales/1.png')";
			firma.innerHTML="Desde que nos unió la casualidad</br>"+
			"Han pasado años y tanto que contar,</br>"+
			"Cada palabra tecleada sigue marcada,</br>"+
			"Cada mirada cruzada tras la pantalla,</br>"+
			"</br>"+
			"Quiero que sepas que mis días iluminas</br>"+
			"Con cada mirada, con cada sonrisa</br>"+
			"Siento tu olor, las caricias de tus manos</br>"+
			"Tu mirar y la textura de tus labios</br>"+
			"</br>"+
			"Tanto por hacer y tanto por sentir</br>"+
			"Y ante todo tanto, tanto por vivir</br>"+
			"Por eso princesa, recuerda hasta el fin</br>"+
			"Que No me voy a ir a ningún sitio sin tí</br>";
			break;
		case 6:
			contenedor.style.backgroundImage = "url('../images/postales/2.png')";
			firma.innerHTML="El problema es que siempre quiero verte.....incluso justo después de haberte visto</br>";
			break;
		case 7:
			contenedor.style.backgroundImage = "url('../images/postales/2.png')";
			firma.innerHTML="Hoy te he visto tantas veces y en tantos sitios...</br>que he pensado que quizá me esté volviendo loco por tí.</br>Hoy te he escrito más mensajes de esos que nunca te llegan...</br>y he pensado que creo estar volviéndome loco por tí.</br>Hoy te he soñado tanto, que no quería despertarme, negándome a abrir los ojos y a conectarme de nuevo al mundo real...</br>por no dejar de estar contigo...</br>y he seguido pensando....</br>que me tengo que estar volviendo loco por tí..</br>Hoy me he dado cuenta que me gustas con tanta fuerza</br>que no hay nada en mi vida antes de conocerte...</br>Y entonces he confirmado</br>que estoy loco por tí";
			break;
		case 8:
			contenedor.style.backgroundImage = "url('../images/postales/3.png')";
			firma.innerHTML="No somos eternos, pero a nuestros ojos las estrellas si. Por eso esta estrella con tu nombre, al igual que tú, brillareis eternamente. Felicidades!";
			break;
		  
  }
  
  contenedor.appendChild(firma);


}
