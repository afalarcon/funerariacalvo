<?php require_once("../class/clas_parametros.php");
$items001=new Parametros();
$datos001=$items001->titulares($_POST['ids']);

$items002=new Parametros();
$valor001=$items002->consu_tipos();

$items003=new Parametros();
$valor002=$items003->consu_mncp();

$items004=new Parametros();
$valor003=$items004->consu_depto();

$items005=new Parametros();
$valor005=$items005->consu_zonas();

echo $_POST['ids'];
?>


  <script>
    var tipos="<?php echo  $_POST['tip01']; ?>";
    if(tipos==1){
      $("#idtitulo01").html("Nuevo Beneficiario - Adicional");
    }else if(tipos==2)
    {
      $("#idtitulo01").html("Actualizar Beneficiario - Adicional");
    }
  </script>

<!-- titulo modal del diálogo -->
<div class="modal-header">
            <h4 class="modal-title"><div id="idtitulo01"></div></h4>
                  
            <button type="button" class="close" data-dismiss="modal">X</button>
          </div>
    
 
          <div class="modal-body">
 <!-- cuerpo de modal -->          
          

<form id="form_edt_nuv1" name="form_edt_nuv1">
	      <input type="hidden" id="tips" name="tips" value="<?php echo $_POST['tip01']; ?>">
          <input type="hidden" id="idtip" name="idtip" value="<?php echo  $_POST['ids']; ?>">
          <input type="hidden" id="Ficha" name="Ficha" value="<?php echo  $_POST['fic']; ?>">

<div class="col-md-12">
			<div class="row">
				
				<div class="col-md-3">
					<label class="control-label" style="position:relative; top:7px;">Zona:</label>
                    <select name="zona" id="zona" class="form-control form-control-sm  mb-3">
                   
		                 <?php for ($i=0; $i <count($valor005); $i++) {?>
		                 <option value="<?php echo $valor005[$i][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor005[$i][1])); ?></option>
		                  <?php } ?>
            		</select>
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Afiliación:</label>
                    <input type="date" class="form-control form-control-sm  mb-3" name="afiliacion" id="afiliacion" value="" >
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Tipo:</label>
					<select name="tipoid" id="tipoid" class="form-control form-control-sm  mb-3">
                   
		                 <?php for ($k=0; $k <count($valor001); $k++) {?>
		                 <option value="<?php echo $valor001[$k][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor001[$k][1])); ?></option>
		                  <?php } ?>
            		</select>
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Identificación:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="identificacion" id="identificacion" >
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">1-Apellido:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="apellido1" id="apellido1" >
				</div>
		  <div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">2-Apellido:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="apellido2" id="apellido2">
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">1-Nombre:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="nombre1" id="nombre1" >
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">2-Nombre:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="nombre2" id="nombre2" >

				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Dirección:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="direccion" id="direccion" >
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Municipio:</label>
					<select name="minicipio" id="minicipio" class="form-control form-control-sm  mb-3">
                   
		                 <?php for ($l=0; $l <count($valor002); $l++) {?>
		                 <option value="<?php echo $valor002[$l][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor002[$l][1])); ?></option>
		                  <?php } ?>
            		</select>
                </div>
                
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Departamento:</label>
					<select name="departamento" id="departamento" class="form-control form-control-sm  mb-3">
                   
		                 <?php for ($m=0; $m <count($valor003); $m++) {?>
		                 <option value="<?php echo $valor003[$m][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor003[$m][1])); ?></option>
		                  <?php } ?>
            		</select>
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Telefono:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="telefono" id="telefono" >
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">FNacimiento:</label>
					<input type="date" class="form-control form-control-sm  mb-3" name="nacimiento" id="nacimiento" >
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Contrato:</label>
					<select name="contrato" id="contrato" class="form-control form-control-sm  mb-3">
                     	<option value="AF">Afiliado</option>
                        <option value="PA">Particular</option>
                     </select>
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Estado:</label>
					<select name="estado" id="estado" class="form-control form-control-sm  mb-3">
                        <option value="1">Activo</option>
                        <option value="0">Inactivo</option>
                     </select>

              </div>
				
			</div>
		</div>

</form>

<!-- termina cuerpo demodal -->
</div>
    
          <!-- pie del diálogo -->
          <div class="modal-footer">
          	<button type="button" class="btn btn-primary" id="btnnuevo1" name="btnnuevo1">Nuevo Registro</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          </div>
<div id="respuesta001"></div>

<script type="text/javascript">
  $("#btnnuevo1").click(function(){

  var fomr=$("#form_edt_nuv1").serialize();
  $.ajax({
    url:"Datos/sql_edit_nuevb.php",
	type: 'post',
	cache: false,
	data: fomr,
	success: function(data)
	{
	$("#respuesta001").fadeIn(1000).html(data);
	$("#form_edt_nuv1").each(function(){
	  this.reset();
	})
	$("#textdesc").focus();
	//$("#idtable001").load("Datos/tabla_datosb.php"); 
	$("#respuesta001").fadeOut(3500);
	}
  });
  });

</script>
