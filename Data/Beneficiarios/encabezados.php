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

?>


  <script>
    var tipos="<?php echo  $_POST['tip01']; ?>";
    if(tipos==1){
      $("#idtitulo01").html("Nuevo usuario");
    }else if(tipos==2)
    {
      $("#idtitulo01").html("Actualizar usuarios");
    }
  </script>

<!-- titulo modal del diálogo -->
<div class="modal-header">
            <h4 class="modal-title"><div id="idtitulo01"></div></h4>
                  
            <button type="button" class="close" data-dismiss="modal">X</button>
          </div>
    
 
          <div class="modal-body">
 <!-- cuerpo de modal -->          
          

<form id="form_edt_nuv" name="form_edt_nuv">
	      <input type="hidden" id="tips" name="tips" value="<?php echo  $_POST['tip01']; ?>">
          <input type="hidden" id="idtip" name="idtip" value="<?php echo  $_POST['ids']; ?>">
         
<?php for ($j=0; $j <count($datos001); $j++) {?>
<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
						<label class="control-label" style="position:relative; top:7px;">Ficha:</label>
                        <input type="text" class="form-control form-control-sm  mb-3" name="Ficha" id="Ficha" value="<?php echo $datos001[$j][1]; ?>" readonly>
				</div>
				<div class="col-md-3">
					<label class="control-label" style="position:relative; top:7px;">Zona:</label>
                    <select name="zona" id="zona" class="form-control form-control-sm  mb-3">
                   <option value="<?php echo $datos001[$j][1]; ?>"><?php echo $datos001[$j][19]; ?></option>
		                 <?php for ($i=0; $i <count($valor005); $i++) {?>
		                 <option value="<?php echo $valor005[$i][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor005[$i][1])); ?></option>
		                  <?php } ?>
            		</select>
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Afiliación:</label>
                    <input type="text" class="form-control form-control-sm  mb-3" name="afiliacion" id="afiliacion" value="<?php echo $datos001[$j][2]; ?>" readonly>
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Tipo:</label>
					<select name="tipoid" id="tipoid" class="form-control form-control-sm  mb-3">
                   <option value="<?php echo $datos001[$j][3]; ?>"><?php echo $datos001[$j][21]; ?></option>
		                 <?php for ($k=0; $k <count($valor001); $k++) {?>
		                 <option value="<?php echo $valor001[$k][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor001[$k][1])); ?></option>
		                  <?php } ?>
            		</select>
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Identificación:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="identificacion" id="identificacion" value="<?php echo $datos001[$j][4]; ?>">
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">1-Apellido:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="apellido1" id="apellido1" value="<?php echo $datos001[$j][6]; ?>">
				</div>
		  <div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">2-Apellido:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="apellido2" id="apellido2" value="<?php echo $datos001[$j][5]; ?>">
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">1-Nombre:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="nombre1" id="nombre1" value="<?php echo $datos001[$j][7]; ?>">
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">2-Nombre:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="nombre2" id="nombre2" value="<?php echo $datos001[$j][8]; ?>">

				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Dirección:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="direccion" id="direccion" value="<?php echo $datos001[$j][9]; ?>">
				</div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Municipio:</label>
					<select name="minicipio" id="minicipio" class="form-control form-control-sm  mb-3">
                   <option value="<?php echo $datos001[$j][10]; ?>"><?php echo $datos001[$j][23]; ?></option>
		                 <?php for ($l=0; $l <count($valor002); $l++) {?>
		                 <option value="<?php echo $valor002[$l][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor002[$l][1])); ?></option>
		                  <?php } ?>
            		</select>
                </div>
                
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Departamento:</label>
					<select name="departamento" id="departamento" class="form-control form-control-sm  mb-3">
                   <option value="<?php echo $datos001[$j][11]; ?>"><?php echo $datos001[$j][26]; ?></option>
		                 <?php for ($m=0; $m <count($valor003); $m++) {?>
		                 <option value="<?php echo $valor003[$m][0]; ?>"><?php echo  utf8_decode(utf8_encode($valor003[$m][1])); ?></option>
		                  <?php } ?>
            		</select>
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Telefono:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="telefono" id="telefono" value="<?php echo $datos001[$j][12]; ?>">
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">FNacimeinto:</label>
					<input type="text" class="form-control form-control-sm  mb-3" name="nacimiento" id="nacimiento" value="<?php echo $datos001[$j][13]; ?>">
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Contrato:</label>
					<select name="contrato" id="contrato" class="form-control form-control-sm  mb-3">
                     <?php if($datos001[$j][18]=='PA'){ ?>
                        <option value="PA">Particular</option>
                        <option value="AF">Afiliado</option>
                     <?php }else{?>
                        <option value="AF">Afiliado</option>
                        <option value="PA">Particular</option>
                        <?php } ?>   
                     </select>
                </div>
				<div class="col-md-3">
					 
					<label class="control-label" style="position:relative; top:7px;">Estado:</label>
					<select name="estado" id="estado" class="form-control form-control-sm  mb-3">
                     <?php if($datos001[$j][15]==1){ ?>
                        <option value="PA">Activo</option>
                        <option value="AF">Inactivo</option>
                     <?php }else{?>
                        <option value="AF">Inactivo</option>
                        <option value="PA">Activo</option>
                        <?php } ?>   
                     </select>

              </div>
				
			</div>
		</div>
<?php  } ?>
</form>

<!-- termina cuerpo demodal -->
</div>
    
          <!-- pie del diálogo -->
          <div class="modal-footer">
          	<button type="button" class="btn btn-primary" id="btnactualiz" name="btnactualiz">Actualizar</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          </div>
<div id="respuesta001"></div>

<script type="text/javascript">
		$("#btnactualiz").click(function(){

		 var fomr1=$("#form_edt_nuv").serialize();
		  $.ajax({
		    url:"usuarios/sql_edit_nuev.php",
			type: 'post',
			cache: false,
			data: fomr1,
			success: function(data)
			{
			$("#respuesta001").fadeIn(1000).html(data);

			$("#idtable001").load("usuarios/tabla_datos.php"); 
			$("#respuesta001").fadeOut(3500);
			}
		 });
		});

</script>
