<?php 
//require_once("../../class/clas_parametros.php");
//$items003=new Parametros();
//$valor001=$items003->consultar_barrio($_POST['ids']);
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

  <script>
    var tipos="<?php echo  $_POST['tip01']; ?>";
    if(tipos==1){
      $("#idtitulo01").html("Nuevo Usuario");
    }else if(tipos==2)
    {
      $("#idtitulo01").html("Actualizar Usuario");
    }
  </script>
<?php $hoy = date("Y-m-d"); 
                                      include_once('../Conexion/connection.php');
                                      $database = new Connection();
                                        $db = $database->open();
                                      try{  
                                          $sql = 'SELECT * FROM segrol WHERE Estado = 1';
                                      ?>
</head>
<body>

        <form id="form_edt_nuv" name="form_edt_nuv">
                      
                          <div class="modal-dialog modal-lg modal-dialog-centered">
                              <div class="modal-content">

                                  <div class="modal-body">
                           
                              
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="row">
                                    <div class="col-md-6">    


                                        <div class="form-group">

                                          <div class="col-sm-2">
                                            <label class="control-label" style="position:relative; top:7px;">Detalle:</label>
                                          </div>
                                          <div class="col-sm-10">
                                            <input type="text" class="form-control form-control-sm  mb-3" name="Detalle" id="Detalle">
                                          </div>
                                        </div>

                                        <div class="form-group">
                                          <div class="col-sm-2">
                                            <label class="control-label" style="position:relative; top:7px;">Estado:</label>
                                          </div>
                                          <div class="col-sm-10">           
                                            <select class="form-control form-control-sm  mb-3" name="Estado" id="Estado">
                                              <option value="1">Activo</option>
                                              <option value="0">Inactivo</option>
                                            </select>
                                          </div>
                                        </div>
                                        
                                        <div class="form-group">
                                          <div class="col-sm-10">
                                              <?php 

                                            }
                                            catch(PDOException $e){
                                              echo "There is some problem in connection: " . $e->getMessage();
                                            }
                                            $database->close();
                                          ?>
                                            </select>
                                            <div class="modal-footer">
                                                  
                                            <?php if($_POST['tip01']==1){ ?>
                                              <button type="button" class="btn btn-primary" id="btnnuevo" name="btnnuevo">Nuevo Registro</button>
                                            <?php }else if($_POST['tip01']==2){?>
                                              <button type="button" class="btn btn-primary" id="btnactualiz" name="btnactualiz">Actualizar</button>
                                            <?php } ?>
                                            <button type="button" class="btn btn-info" data-dismiss="modal">Cerrar  </button>
                                            </div>              
                              
                                          </div>
                                        </div>
                                            </div> 
                                    </div>
                                </div>
                              </div>
 
                          </div>
                        </div>  
                        <div id="respuesta001"></div>
                      </div>
  
        </form>


</body>
</html>

    <script>
      $("#btnnuevo").click(function(){
      var textDet=$("#Detalle").val();
      var textstad=$("#Estado").val();
      if(textDet==''){alert("El campo Detalle no debe estar vacio.."); $("#Detalle").focus(); }else
      if(textstad==''){alert("El campo Estado no debe estar vacio.."); $("#Estado").focus(); }else
      {
        var fomr=$("#form_edt_nuv").serialize();
        $.ajax({
          url:"Rol/add.php",
      type: 'post',
      cache: false,
      data: fomr,
      success: function(data)
      {
      $("#respuesta001").fadeIn(1000).html(data);
      $("#form_edt_nuv").each(function(){
        this.reset();
      })
      $("#textbarrio").focus();
      $("#idtable001").load("Rol/datos.php"); 
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
          url:"Rol/add.php",
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