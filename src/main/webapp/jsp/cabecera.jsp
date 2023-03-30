
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li class=""><a href="contenido.jsp">INICIO</a></li>
            <li><a href="sorpresas.jsp">SORPRESAS DE AYER Y HOY</a></li>
            <li><a data-toggle="modal" data-target="#exampleModal" style="cursor: pointer">EVOCACIONES</a></li><!-- href="evocacion.jsp" -->
            <li><a href="recuerdos.jsp">RECUERDOS DE AYER</a></li>
            <li><a href="palabrasa.jsp">PALABRAS DE AYER</a></li>
            <li><a href="recuerdosm.jsp">RECUERDOS DE MAÑANA</a></li>
            <li><a href="formulario.jsp">FORMULARIO</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Evocaciones</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Esta sección contiene un montón de videos pastelosos, cursis, etc...</br>En los que alguna frase, algun sentimiento, me hacen acordarme de tí</br>Pueden ser intensos por lo que si no estás preparada para algunas cosas, para sentir otras... o simplemente prefieres no hacerlo, no entres.</br></br>¿Estás segura que aún así quiereas entrar? 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
        <button type="button" onclick="window.location='evocacion.jsp'" class="btn btn-primary" style="color:#333333">Entrar</button>
      </div>
    </div>
  </div>
</div>