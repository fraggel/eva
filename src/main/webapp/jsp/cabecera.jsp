
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
            <!-- <li><a data-toggle="modal" data-target="#exampleModal" style="cursor: pointer">EVOCACIONES</a></li>-->
            <li><a href="evocacion.jsp">EVOCACIONES</a></li>
            <li><a href="recuerdos.jsp">RECUERDOS DE AYER</a></li>
            <li><a href="palabrasa.jsp">PALABRAS DE AYER</a></li>
            <li><a href="recuerdosm.jsp">RECUERDOS DE MAÑANA</a></li>
            <li><a href="formulario.jsp">FORMULARIO</a></li>
            <li><a data-toggle="modal" data-target="#exampleModal" style="cursor: pointer"><img width="20px" src="../images/descargas.png"></a></li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Descargar</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ¿Quieres descargar la web completa? 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
        <button type="button" onclick="window.location='../web.7z'" class="btn btn-primary" style="color:#333333">Descargar</button>
      </div>
    </div>
  </div>
</div>