<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JS Console</title>
    <script>
	  var GivenDate = '2023-04-14';
	  var CurrentDate = new Date();
	  GivenDate = new Date(GivenDate);
	
	  if(GivenDate > CurrentDate){
		  window.location = "nodisponible.jsp";
	  }
  </script>
    <style>
      *{margin: 0;padding: 0;box-sizing: border-box;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;}
      #root{
          width: 100%;
          height: 100vh;
      }

      .console{
          width:100%;
          height:100%;
          max-height:100%;
          background-color:black;
          color:whitesmoke;
          overflow-y:auto;
          overflow-x:hidden;
          padding: 20px 11px;
      }
      .console *::selection{
          color:black;
          background-color: whitesmoke;
      }

      .text{
          color:whitesmoke;
          font-size:1.2rem;
      }

      .input{
          width: fit-content;
          color:whitesmoke;
          font-size:1.2rem;
          background-color: inherit;
          border-right:5px solid whitesmoke;
          caret-color:transparent;
          animation: input-caret-blink 1.5s step-end infinite;
      }
      .input:focus{
          outline:none;
      }
      .input::before{
          content:">";
      }
      @keyframes input-caret-blink{
          50%{
              border-color:transparent;
          }
      }

      .button{
          display:block;
          width: fit-content;
          padding:2px 7px;
          margin:3px 0px;
          background-color:darkgray;
          color: black;
          font-size:1.1rem;
          text-align:center;
          cursor:default;
      }
    </style>
</head>
<body>
    
    <div id="root"></div>

    <script>
      //components
      //console component
      class Console{
          version="Windows PowerShell</br>Copyright (C) Microsoft Corporation. Todos los derechos reservados.</br>";
          welcome_message=this.version;
          comps=[];
          input_received=false;
          user_input="";
          blocking_interval=null;
          text_color="whitesmoke";
          error_color="red";
          success_color="teal";
          warning_color="yellow";
          constructor(root){
              this.elem=document.createElement("div");
              this.elem.className="console";
              this.elem.addEventListener('click',()=>{
                  if(this.lastComp.elem.className=="input"){
                      this.lastComp.elem.focus();
                  }
              });
              root.appendChild(this.elem);
              this.writeWarning(this.welcome_message);
          }
          appendComponent(comp){
              this.comps.push(comp);
              this.elem.appendChild(comp.elem);
          }
          writeLine(txt){
              let text=new Text(txt,this.text_color);
              this.appendComponent(text);
          }
          writeError(txt){
              let text=new Text(txt,this.error_color);
              this.appendComponent(text);
          }
          writeWarning(txt){
              let text=new Text(txt,this.warning_color);
              this.appendComponent(text);
          }
          writeSuccess(txt){
              let text=new Text(txt,this.success_color);
              this.appendComponent(text);
          }
          async readLine(txt){
        	  if(txt){
        		  window.location="jsp/inicio.jsp";
        	  }
              if(txt)this.writeLine(txt);
              let input=new Input(this.text_color);
              this.appendComponent(input);
              input.elem.focus();
              return new Promise(resolve=>{
                  this.blocking_interval=setInterval(()=>{
                      if(this.input_received){
                          this.input_received=false;
                          clearInterval(this.blocking_interval);
                          resolve(this.user_input);
                      }
                  },500);
              })
          }
          async readChoice(choices,txt=null,bgcolor="darkgrey",color="black"){
              if(txt)this.writeLine(txt);
              let choice=new Choice(choices,bgcolor,color);
              this.appendComponent(choice);
              return new Promise(resolve=>{
                  this.blocking_interval=setInterval(()=>{
                      if(this.input_received){
                          this.input_received=false;
                          clearInterval(this.blocking_interval);
                          resolve(this.user_input);
                      }
                  },500);
              })
          }
          displayButton(text,callback,bgcolor="darkgrey",color="black"){
              let button=new Button(text,callback,bgcolor,color);
              this.appendComponent(button);
          }
          async waitFor(millis){
              return new Promise(resolve=>{
                  setTimeout(()=>this.input_received=true,millis);
                  this.blocking_interval=setInterval(()=>{
                      if(this.input_received){
                          this.input_received=false;
                          clearInterval(this.blocking_interval);
                          resolve(true);
                      }
                  },500);
              })
          }
          lineBreak(){
              let text=new Text("<br>",this.text_color);
              this.appendComponent(text);
          }
          clear(){
              for(let i=0;i<this.comps.length;i++){
                  this.comps[i].elem.parentNode.removeChild(this.comps[i].elem);
              }
              this.comps.length=0;
              this.writeWarning(this.welcome_message);
          }
          setBGColor(color){
              this.elem.style.backgroundColor=color;
          }
          resetBGColor(){
              this.elem.style.backgroundColor="black";
          }
          setTextColor(color){
              this.text_color=color;
          }
          resetTextColor(){
              this.text_color="whitesmoke";
          }
          //helpers
          get lastComp(){return this.comps[this.comps.length-1]};
      }
      //text component
      class Text{
          constructor(txt,color){
              this.elem=document.createElement("p");
              this.elem.className="text";
              this.elem.style.color=color;
              this.elem.innerHTML=txt;
          }
      }
      //input component
      class Input{
          constructor(color){
              this.elem=document.createElement("p");
              this.elem.className="input";
              this.elem.style.color=color;
              this.elem.contentEditable=true;
              this.elem.addEventListener('keydown',function(e){
                  let key=e.key;
                  if(key=="Enter"){
                      e.preventDefault();
                      cmd.user_input=cmd.lastComp.elem.innerText;
                      cmd.input_received=true;
                      cmd.lastComp.elem.contentEditable=false;
                      cmd.lastComp.elem.style.borderWidth="0px";
                  }
              });
          }
      }
      //button component
      class Button{
          constructor(txt,callback,bgcolor,color){
              this.elem=document.createElement("span");
              this.elem.className="button";
              this.elem.style.backgroundColor=bgcolor;
              this.elem.style.color=color;
              this.elem.innerText=txt;
              this.elem.addEventListener('click',(e)=>{callback(e);});
          }
      }
      //choice component
      class Choice{
          constructor(choices,bgcolor,color){
              this.elem=document.createElement("div");
              this.elem.className="choice_container";
              choices.forEach(element=>{
                  let button_comp=new Button(element,()=>{
                      cmd.user_input=element;
                      cmd.input_received=true;
                  },bgcolor,color);
                  this.elem.appendChild(button_comp.elem);
              });
          }
      }

      /************************************/
      let root=document.getElementById("root");

      let cmd=new Console(root);
      async function execute(){
          /*let res=await cmd.readChoice(["choice1","choice2","choice3"],"Pick a choice");
          console.log(res);
          cmd.displayButton("ok",()=>{
              console.log("on ok button");
          });*/
    	  cmd.lineBreak();
          cmd.writeLine("Introduce la password en formato \"DDMM\"");
          let u=await cmd.readLine();
          //if(u.toUpperCase().indexOf("SKIP".toUpperCase())==-1){
	          while(u.toUpperCase().indexOf("1404".toUpperCase() )==-1){
	              cmd.writeError("No es correcto, introducir nuevamente");
	              u=await cmd.readLine();
	          }
	          cmd.lineBreak();
	          cmd.writeLine("Para compilar escriba \"javac *.jsp\"");
	          u=await cmd.readLine();
	          while(u.toUpperCase().indexOf("javac *.jsp".toUpperCase() )==-1){
	              cmd.writeError("usa el comando: javac *.jsp");
	              u=await cmd.readLine();
	          }
	          cmd.writeLine("compilando..");
	          await cmd.waitFor(250);
	          cmd.writeLine("compile jsp/cabecera.jsp");
	          //cmd.writeLine("compile jsp/contenido.jsp");
	          //cmd.writeLine("compile jsp/evocacion.jsp");
	          cmd.writeLine("compile jsp/formulario.jsp");
	          cmd.writeLine("compile jsp/inicio.jsp");
	          //cmd.writeLine("compile jsp/palabrasa.jsp");
	          cmd.writeLine("compile jsp/pie.jsp");
	          cmd.writeLine("compile jsp/recuerdos.jsp");
	          //cmd.writeLine("compile jsp/recuerdosm.jsp");
	          //cmd.writeLine("compile jsp/sorpresas.jsp");
	          //cmd.writeLine("compile jsp/visorImagenes.jsp");
	          cmd.writeLine("compile jsp/visorVideos.jsp");
	          await cmd.waitFor(500);
	          cmd.writeSuccess("compilacion terminada correctamente!");
	          cmd.lineBreak();
	          //
	          cmd.writeLine("Para ejecutar escriba \"java -jar web.jar\"");
	          u=await cmd.readLine();
	          while(u.toUpperCase().indexOf("java -jar web.jar".toUpperCase())==-1){
	              cmd.writeError("usa el comando java -jar web.jar");
	              u=await cmd.readLine();
	          }
	          cmd.writeLine("espere..");
	          await cmd.waitFor(250);
	          cmd.writeLine(".");
	          await cmd.waitFor(250);
	          cmd.writeLine("..");
	          await cmd.waitFor(250);
	          cmd.writeLine("...");
	          await cmd.waitFor(250);
	          cmd.writeLine("....");
	          await cmd.waitFor(250);
	          cmd.writeLine("......");
	          cmd.lineBreak();
          //}
	          u=await cmd.readLine("Arrancando aplicación");
          
          
      }
      execute();  
    </script>

</body>
</html>