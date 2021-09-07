<?php require_once('../Conexion/connection.php'); ?>



  <script>
    var tipos="<?php echo  $_POST['tip01']; ?>";
      if(tipos==1){
        $("#myModalLabel").html("Nuevo Usuario");
      }else if(tipos==2)
      {
        $("#myModalLabel").html("Actualizar Usuario");
      }
  </script>
      <?php $hoy = date("Y-m-d"); 
        $database = new Connection();
        $db = $database->open();
        try{  
        $sql = 'SELECT * FROM segrol WHERE Estado = 1';
       ?>

 
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel"></h4>
      </div>
      <div class="modal-body">



        <form id="form_edt_nuv" name="form_edt_nuv">
                    <div class="col-md-12">
                      <div class="row">
                        <div class="col-md-6">    


                            <div class="form-group">
                              <div class="col-sm-2">
                                <label class="control-label" style="position:relative; top:7px;">Usuario:</label>
                              </div>
                              <div class="col-sm-10">
                                <input type="text" class="form-control form-control-sm  mb-3" name="Usuario" id="Usuario">
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-2">
                                <label class="control-label" style="position:relative; top:7px;">Clave:</label>
                              </div>
                              <div class="col-sm-10">
                                <input type="password" class="form-control form-control-sm  mb-3" name="Clave" id="Clave">
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-2">
                                <label class="control-label" style="position:relative; top:7px;">Nombre:</label>
                              </div>
                              <div class="col-sm-10">
                                <input type="text" class="form-control form-control-sm  mb-3" name="Nombre" id="Nombre">
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-2">
                                <label class="control-label" style="position:relative; top:7px;">Apellido:</label>
                              </div>
                              <div class="col-sm-10">
                                <input type="text" class="form-control form-control-sm  mb-3" name="Apellido" id="Apellido">
                              </div>
                            </div>
                          </div>
                          <div class="col-md-6">

                            <div class="form-group">
                              <div class="col-sm-2">
                                <label class="control-label" style="position:relative; top:7px;">Correo:</label>
                              </div>
                              <div class="col-sm-10">
                                <input type="text" class="form-control form-control-sm  mb-3" name="Correo" id="Correo">
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-2">
                                <label class="control-label" style="position:relative; top:7px;">Fecha:</label>
                              </div>
                              <div class="col-sm-10">
                                <input type="text" class="form-control form-control-sm  mb-3" id="Fecha" name="Fecha" value="<?php echo $hoy; ?>" readonly >
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
                              <div class="col-sm-2">
                                <label class="control-label" style="position:relative; top:7px;">Rol:</label>
                              </div>
                              <div class="col-sm-10">
                                <select class="form-control form-control-sm  mb-3" name="Rol" id="Rol">
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
                      </div>
                    </div>
                                
                  <?php if($_POST['tip01']==1){ ?>
                    <button type="button" class="btn btn-primary" id="btnnuevo" name="btnnuevo">Nuevo Registro</button>
                  <?php }else if($_POST['tip01']==2){?>
                    <button type="button" class="btn btn-primary" id="btnactualiz" name="btnactualiz">Actualizar</button>
                  <?php } ?>
                    <button type="button" data-dismiss="modal" class="btn btn-info" ><span aria-hidden="true">Cerrar</span></button>
        </form>

    <div id="respuesta001"></div>
 </div>
    </div>

    <script>
      $("#btnnuevo").click(function(){
      var textbarr=$("#textbarrio").val();
      var textstad=$("#estado1").val();
      if(textbarr==''){alert("El campo Descripcion Barrio no debe estar vacio.."); $("#textbarrio").focus(); }else
      if(textstad==''){alert("El campo Estado Barrio no debe estar vacio.."); $("#estado1").focus(); }else
      {
        var fomr=$("#form_edt_nuv").serialize();
        $.ajax({
          url:"Usuarios/new.php",
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
      $("#idtable001").load("Usuarios/table.php"); 
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
          url:"Usuarios/edit.php",
      type: 'post',
      cache: false,
      data: fomr1,
      success: function(data)
      {
      $("#respuesta001").fadeIn(1000).html(data);

      $("#idtable001").load("Usuarios/table.php"); 
      $("#respuesta001").fadeOut(3500);
      }

        });

      }
        });
    </script>