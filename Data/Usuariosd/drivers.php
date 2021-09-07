<?php 
//require_once("../../class/clas_parametros.php");
//$items003=new Parametros();
//$valor001=$items003->consultar_barrio($_POST['ids']);
?>


  <script>
    var tipos="<?php echo  $_POST['tip01']; ?>";
    if(tipos==1){
      $("#idtitulo01").html("Nuevo Usuario");
    }else if(tipos==2)
    {
      $("#idtitulo01").html("Actualizar Usuario");
    }
  </script>


        <form id="form_edt_nuv" name="form_edt_nuv">
                      
                         
                                      <?php $hoy = date("Y-m-d"); 
                                      include_once('../Conexion/connection.php');
                                      $database = new Connection();
                                        $db = $database->open();
                                      try{  
                                          $sql = 'SELECT * FROM segrol WHERE Estado = 1';
                                      ?>
                                

                                <div class="row text-center">
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">                                         
                                            <label class="control-label" >Usuario:</label>      
                                            <input type="text" class="form-control form-control col-sm-10 offset-sm-1" name="Usuario" placeholder="Ingrese Nombre para el Usuario" >
                                     
                                        </div>
                                  </div>
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">
                                          
                                            <label class="control-label" >Clave:</label>                                          
                                            <input type="password" class="form-control form-control col-sm-10 offset-sm-1" name="Clave" id="Clave" placeholder="Ingrese la clave">
                                      </div>
                                  </div>
                                </div> 

                               

                                <div class="row text-center">
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">
                                          
                                            <label class="control-label" >Nombre:</label>
                                            <input type="text" class="form-control form-control  col-sm-10 offset-sm-1" name="Nombre" id="Nombre"placeholder="Ingrese el Nombre">
                                          
                                        </div>
                                  </div>
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">
                                          
                                            <label class="control-label" >Apellido:</label>
                                          
                                            <input type="text" class="form-control form-control col-sm-10 offset-sm-1" name="Apellido" id="Apellido" placeholder="Ingrese el Apelido">
                                          
                                        </div>
                                  </div>
                                </div>

                                
                                <div class="row text-center">
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">
                                          
                                            <label class="control-label" >Correo:</label>                                          
                                            <input type="email" class="form-control form-control  col-sm-10 offset-sm-1" name="Correo" id="Correo" placeholder="Ingrese el Correo">
                                          
                                        </div>
                                  </div>
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">
                                          
                                            <label class="control-label" >Fecha:</label>
                                         
                                            <input type="text" class="form-control form-control  col-sm-10 offset-sm-1" id="Fecha" name="Fecha" value="<?php echo $hoy; ?>" readonly >
                                         
                                        </div>
                                  </div>
                                </div>

                                <div class="row text-center">
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">
                                          
                                            <label class="control-label" >Estado:</label>
                                                   
                                            <select class="form-control form-control col-sm-10 offset-sm-1" name="Estado" id="Estado">
                                              <option value="">Seleccione...</option>
                                              <option value="1">Activo</option>
                                              <option value="0">Inactivo</option>
                                            </select>
                                         
                                        </div>
                                  </div>
                                  <div class="col-md-6 pt-3">
                                  <div class="form-group">
                                         
                                            <label class="control-label" >Rol:</label>
                                          
                                            <select class="form-control form-control col-sm-10 offset-sm-1" name="Rol" id="Rol">
                                            <option value="">Seleccione...</option>
                                              <?php foreach ($db->query($sql) as $row) { ?>
                                              <option value="<?php echo $row['id']; ?>"><?php echo $row['RolDetalle']; ?></option>
                                              <?php 
                                                }
                                            }
                                            catch(PDOException $e){
                                              echo "There is some problem in connection: " . $e->getMessage();
                                            }
                                            $database->close();
                                          ?>
                                            </select>
                                                      
                              
                                          
                                        </div>
                                  </div>
                                </div>

                                                  <div class="modal-footer justify-content-center">
                                                  
                                                  <?php if($_POST['tip01']==1){ ?>
                                                    <button type="button" class="btn btn-primary" id="btnnuevo" name="btnnuevo">Nuevo Registro</button>
                                                  <?php }else if($_POST['tip01']==2){?>
                                                    <button type="button" class="btn btn-primary" id="btnactualiz" name="btnactualiz">Actualizar</button>
                                                  <?php } ?>
                                                  
                                                  </div>  


        </form>

  <div id="respuesta001" style="color:white"></div>


    <script>

function urlToJSON(urlEnc){
  
  const urlEncoded = decodeURIComponent(urlEnc);
  const fullObjects = urlEncoded.split("&");
  const keys = fullObjects.map(el => el.split("=")[0]);
  const values = fullObjects.map(el => el.split("=")[1]);
  const resObj = {};

  for(let i = 0; i < fullObjects.length; i++){
    resObj[keys[i]] = values[i];
  }
  
  return resObj;
}

      $("#btnnuevo").click(function(){
      var error="";  
      var textusurio=$("#Usuario").val();
      var textClave=$("#Clave").val();
      var Nom=$("#Nombre").val();
      var apell=$("#Apellido").val();
      var correo=$("#Correo").val();
      var fch=$("#Fecha").val();
      var Esdt=$("#Estado").val();
      var Rl=$("#Rol").val();
if(textusurio==""){
error+="El usuario es Obligatorio <br>";
}
if(textClave==""){
  error+="La clave es Obligatoria <br>";
}
if(Nom==""){
  error+="EL nombre es obligatorio <br>";
}
if(apell==""){
  error+="El apellido es obligatorio <br>";
}
if(correo==""){
  error+="El correo es Obligatorio <br>";
}
if(fch==""){
  error+="La fecha es obligatoria <br>";
}
if(Esdt==""){
  error+="El estado es Obligatorio <br>";
}
if(Rl==""){
  error+="EL Rol es Obligatorio <br>";
}
   

      if($("#Correo").val().indexOf('@', 0) == -1 || $("#Correo").val().indexOf('.', 0) == -1) {
            error+="Revise el correo no tiene el formato correcto <br>";
          
        }
        if(error!="")
        {
          alert(error);
       
        }


      if(error=="")
      {
        
        var fomr=$("#form_edt_nuv").serialize();
              $.ajax({
          url:"Usuariosd/sql_edit_nuev.php",
      type: 'post',
      
      cache: false,
      data: fomr,
      success: function(data)
      {
      $("#respuesta001").fadeIn(1000).html(data);
      $("#form_edt_nuv").each(function(){
        this.reset();
      });
      console.log(data);
      if(data==1){
        MSJes("center","success","Se ingresa con exito..");
        $("#Usuario").focus();
      }
     
      $("#idtable001").load("Usuariosd/datos.php");	
     $("#respuesta001").fadeOut(3500);
      }
        });

      }
        });

    
        $("#btnactualiz").click(function(){
      var textbarr=$("#textbarrio").val();
      if(textbarr==''){alert("El campo Descripcion Barrio no debe estar vacio.."); $("#textbarrio").focus(); }else
      {
        var fomr1=$("#form_edt_nuv").serialize();
        $.ajax({
          url:"barrios/sql_edit_nuev.php",
      type: 'post',
      cache: false,
      data: fomr1,
      success: function(data)
      {
      $("#respuesta001").fadeIn(1000).html(data);

      $("#idtable001").load("barrios/tabla_datos.php"); 
      $("#respuesta001").fadeOut(3500);
      }

        });

      }
        });
    </script>